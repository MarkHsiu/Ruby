#Ruby 中的每个方法默认都会返回一个值。这个返回的值是最后一个语句的值
def test(a1="Ruby", a2="a")
   puts "编程语言为 #{a1}"
   puts "编程语言为 #{a2}"
end
test "C", "C++"
test

#Ruby 中的 return 语句用于从 Ruby 方法中返回一个或多个值。
def test
   i = 100
   j = 200
   k = 300
return i, j, k
end
var = test
puts var
puts var[0]

#可变数量的参数
def sample(*test)
	puts "参数个数为 #{test.length}"
	for i in 0...test.length
		puts "参数值为 #{test[i]}"
	end 
end
sample "Mark","Hsiu",1
sample "apple","huawei","xiaomi","oppo"

