x, y, z = 12, 36, 72
puts "x 的值为 #{ x }"
puts "x + y 的值为 #{ x + y }"
puts "x + y + z 的平均值为 #{ (x + y + z)/3 }"
puts

# Ruby 中还支持一种采用 %q 和 %Q 来引导的字符串变量，%q 使用的是单引号引用规则，
#而 %Q 是双引号引用规则，后面再接一个 (! [ { 等等的开始界定符和与 } ] ) 等等的末尾界定符。

#跟在q或Q后面的字符是分界符.分界符可以是任意一个非字母数字的单字节字符.如:[,{,(,<,!等,
#字符串会一直读取到发现相匹配的结束符为止. 
desc1 = %Q{Ruby 的字符串可以使用 '' 和 ""。}
desc2 = %q|Ruby 的字符串可以使用 '' 和 ""。|
puts desc1
puts desc2
puts

myStr = String.new("THIS IS TEST".downcase)
foo = myStr.downcase
puts "#{foo}"
puts "THIS IS TEST".downcase
puts

=begin
str.unpack(format)
根据 format 字符串解码 str（可能包含二进制数据），返回被提取的每个值的数组。
format 字符由一系列单字符指令组成。每个指令后可以跟着一个数字，表示重复该指令的次数。
星号（*）将使用所有剩余的元素。指令 sSiIlL 每个后可能都跟着一个下划线（_），
为指定类型使用底层平台的本地尺寸大小，否则使用独立于平台的一致的尺寸大小。
format 字符串中的空格会被忽略。
=end
#'\0':'\0'表示字符串结束，它在ASCII中的值为0（数值0，非字符‘0’）
#所以在数值上NULL,'\0',0是一样的，都是0，但'0'就不同了，在ASCII码中编码为48，所以字符0和上述三个值不同。
puts "abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
puts "abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
puts "abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
puts "aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
puts "aaa".unpack('h2H2c')               #=> ["16", "61", 97]
puts "\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
puts "now=20is".unpack('M*')             #=> ["now is"]
puts "whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]