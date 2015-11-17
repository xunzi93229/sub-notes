assert_select 的作用是检查有没有指定的HTML标签，这种方法叫做“选择符”

assert_select "title", "Home | Ruby on Rails Tutorial Sample App"

这行代码的作用是检查有没有<title> 标签，以及里面的内容是不是字符串Home | Ruby on Rails Tutorial Sample App



minitest-reporters


Provide   yield   full_title 

一条生长线的问题

yield(:title) 会加载这个属性
:title 参数是由provide  提供的  provide(:title,'内容')  

而将yield 当做一个参数 传递给了full_title  
判断 full_title 是否有值，如果有值的话 是什么情况  ，如果没有值的话是什么情况

provide  函数的作用是将 后面的字符串 赋给 符号titile  只是这个作用而已