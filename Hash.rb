
#创建对象
#您也可以使用 new 创建带有默认值的哈希，不带默认值的哈希是 nil：
months = Hash.new
months = Hash.new( "month" )
months = Hash.new "month"

#当您访问带有默认值的哈希中的任意键时，如果键或值不存在，访问哈希将返回默认值：
puts "#{months[0]}"
puts "#{months[72]}"

H = Hash["a" => 100, "b" => 200,[1,"jan"] => "January"]
puts "#{H['a']}"
puts "#{H['b']}"
puts "#{H[[1,"jan"]]}"

$, = ", "
months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}
keys = months.keys
puts "#{keys}"