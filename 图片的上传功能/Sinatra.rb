=begin
begin #开始
 
 raise.. #抛出异常
 
rescue [ExceptionType = StandardException] #捕获指定类型的异常 缺省值是StandardException
 $! #表示异常信息
 $@ #表示异常出现的代码位置
else #其余异常
 ..
ensure #不管有没有异常，进入该代码块
 
end #结束
=end

post '/' do
  result = []
  begin
    params = SecureRandom.hex(32) + File.extname(f[:filename])
    filepath = "#{ENV[STATIC_ROOT]}#{filename}"
    FileUtils.cp(f[:tempfile].path,filepath)
    result << "#{ENV[:tempfile].path,filepath}"
  end
  rescue Exception => e
    halt 400
  end
  json msg:"upload success", urls: result
  end