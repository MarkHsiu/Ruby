#!/usr/bin/ruby

puts "This is main Ruby Program"

END {
   puts "Terminating Ruby Program"
}

BEGIN {
   puts "Initializing Ruby Program"
}

#注释

=begin
这是注释。
这也是注释。
这也是注释。
这还是注释。
=end
puts
puts 'escape using "\\"';
puts 'That\'s right';
puts "Multiplication Value : #{24*60*60}";
name="Ruby" 
puts name 
#可以使用序列 #{ expr } 替换任意 Ruby 表达式的值为一个字符串。在这里，expr 可以是任意的 Ruby 表达式。
puts "#{name+",ok"}" 
puts

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
    print key, " is ", value, "\n"
end
puts

(10..15).each do |n|
    print n, ' ',':'
end 
puts