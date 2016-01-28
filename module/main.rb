$LOAD_PATH << '.'
#在这里，我们使用 $LOAD_PATH << '.' 让 Ruby 知道必须在当前目录中搜索被引用的文件。
#如果您不想使用 $LOAD_PATH，那么您可以使用 require_relative 来从一个相对目录引用文件。

#注意：在这里，文件包含相同的函数名称。所以，这会在引用调用程序时导致代码模糊，
#但是模块避免了这种代码模糊，而且我们可以使用模块的名称调用适当的函数。
require 'trig.rb'
require_relative 'moral'

y= Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)