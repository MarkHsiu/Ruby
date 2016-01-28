#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

#变量是持有可被任何程序使用的任何数据的存储位置。
#Ruby 支持五种类型的变量。

#    一般小写字母、下划线开头：变量（Variable）。
#    $开头：全局变量（Global variable）。
#    @开头：实例变量（Instance variable）。
#    @@开头：类变量（Class variable）类变量被共享在整个继承链中
#    大写字母开头：常数（Constant）。

#Ruby 伪变量
#它们是特殊的变量，有着局部变量的外观，但行为却像常量。您不能给这些变量赋任何值。

#    self: 当前方法的接收器对象。
#    true: 代表 true 的值。
#    false: 代表 false 的值。
#    nil: 代表 undefined 的值。
#    __FILE__: 当前源文件的名称。
#    __LINE__: 当前行在源文件中的编号。


$global_variable = 10
class Class1
  def print_global
      puts "全局变量在 Class1 中输出为 #$global_variable"
  end
end

class Class2
  def initialize
  	  $global_variable= 20
  end	
  def print_global
      puts "全局变量在 Class2 中输出为 #$global_variable"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
class3obj = Class1.new
class3obj.print_global

foo = 42
puts defined? foo    # => "local-variable"
puts defined? $_     # => "global-variable"
puts defined? bar    # => nil（未定义）
puts defined? method_call # 如果方法已经定义，则为 True

#您可以通过在方法名称前加上模块名称和一条下划线来调用模块方法。您可以使用模块名称和两个冒号来引用一个常量。
#:: 是一元运算符，允许在类或模块内定义常量、实例方法和类方法，可以从类或模块外的任何地方进行访问。
#请记住：在 Ruby 中，类和方法也可以被当作常量。
#您只需要在表达式的常量名前加上 :: 前缀，即可返回适当的类或模块对象。
#如果未使用前缀表达式，则默认使用主 Object 类。
MR_COUNT = 0        # 定义在主 Object 类上的常量
module Foo
  MR_COUNT = 4
  ::MR_COUNT = 1    # 设置全局计数为 1
  MR_COUNT = 2      # 设置局部计数为 2
end
puts MR_COUNT       # 这是全局常量
puts Foo::MR_COUNT  # 这是 "Foo" 的局部常量 


CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST