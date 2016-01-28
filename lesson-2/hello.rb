puts 'Hello Mark'
puts 'begin' <=> 'end'
puts 'same' <=> 'same'

a = [5,3,4,1]
#puts a.sort
#puts a.any? { |i| i>6 }
#puts a.any? { |i| i>4 }
#puts a.all? { |i| i>4 }
#puts a.collect {|i| i*2}
#puts a.select {|i| i%2 ==0} # even
#puts a.select {|i| i%2 ==1} # odd
#puts a.max
#puts a.member?(5)

puts a.inject(0) { |mem, var| mem+var }
puts a.inject {|sum ,i| sum+i}
puts a.inject {|product,i| product*i}
a.inject(0) do |sum,i|
	puts "sum： #{sum} i:#{i} sum+i：#{sum+i}"
	sum+i
end
b= [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

i=0
while i<16
	i = i+1
	if i%4 == 0   
       puts "#{i}： #{b[i-4]} #{b[i-3]} #{b[i-2]} #{b[i-1]}" 
    end
end
puts i
 

#each_slice，迭代取出间隔分割的数组，返回nil
citys = ["北京", "上海", "广州", "香港", "澳门","大连","杭州","台北"]
citys.each_slice(4){|city|
  puts city
  puts
  #p city
}

