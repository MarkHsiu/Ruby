x = 1
if x > 2
	puts "x 大于 2"
elsif x <= 2 and x != 0
	puts "x 是 1"
else
	puts "无法得知 x 的值"
end

$debug=1 #nil
print "debug\n" if $debug
puts "ok"
		

unless x>2
	puts "x 小于 2"				
else
	puts "x 大于 2"
end

$var =  1
print "1 -- 这一行输出\n" if $var
print "2 -- 这一行不输出\n" unless $var

$var = false
print "3 -- 这一行输出\n" unless $var


$age =5
case $age
when 1..3
	puts "你好"
when 4..6
	puts "不好"
when 7..9
    puts "很好"
else
   puts "逗我吧"
end   


when a == 4 puts a then a = 7 end		