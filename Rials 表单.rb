要创建一个表单标签指定的动作 ，并与POST请求 ，使用下面的语法

<%= from_tag :action=> 'update', :id=> @some_object %>

<%= from_tag( { :action => :save,}, { :method=> :post}) %>

文本输入
<%= text_field :modelname, attribute_name, options %>

隐藏输入域使用下面的语法
<%= hidden_filed ... %>

创建密码输入域用下面的语法
<%= password_field .... %>
要创建文件上传输入域下面的语法
<%= file_field ... %>

要创建一个文本区域使用下面的 syantax
<% = text_area ... %>
下面的例子 可以表示
<%= text_area "post", "body", "cols" =>20, "rows" => 40 %>
产生的html代码如下
<textarea cols="20" rows="40" id="post_body" name="post[body]">
<%={@post.body}%>
</textarea>

产生一个单选的按钮 
<%= radio_button :modelname, :attribute_name, :tag_value, options %>


长生一个复选框的按钮 

