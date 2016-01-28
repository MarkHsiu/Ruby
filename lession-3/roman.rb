
#ruby中带“!"和不带"!"的方法的最大的区别就是带”!"的会改变调用对象本身了。
#比方说str.gsub(/a/, 'b')，不会改变str本身，只会返回一个新的str。
#而str.gsub!(/a/, 'b')就会把str本身给改了。

#但是gsub和gsub!还有另外一个不同点就是，gsub不管怎么样都会返回一个新的字符串，
#而gsub!只有在有字符被替换的情况下才会返回一个新的字符串，假如说没有任何字符被替换，gsub!只会返回nil.

#example:

#    'abc'.gsub(/a/, 'b') #返回'bbc'  
#    'abc'.gsub!(/a/, 'b') #返回'bbc'  
#    'abc'.gsub(/d/,'a') #返回'abc'  
#    'abc'.gsub!(/d/, 'a') #返回nil  

class Roman
	def self.method_missing name, *args
		roman = name.to_s
		roman.gsub!("IV","IIII")
		roman.gsub!("IX","VIIII")
		roman.gsub!("XL","XXXX")
		roman.gsub!("XC","LXXXX")

		(roman.count("I") + 
			roman.count("V") * 5 +
			roman.count("X") * 10 +
			roman.count("L") * 50 +
			roman.count("C") * 100)
	end
end

puts Roman.X
puts Roman.XC
puts Roman.XII
puts Roman.X