module ToFile
	def filename
		"object_#{self.object_id}.txt"
	end

	def to_f
		File.open(filename,'w') {|f| f.write(to_s)}
	end
end

class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def to_s
		puts "name：#{name}"
		"name：#{name}"
		"name：#{name}"
		"name：#{name}"
	end

	def filename
		"object_#{self.object_id}.txt"
	end

	def to_f
		File.open(filename,'w') {|f| f.write(to_s)}
	end
end

class SingleExtend
	include ToFile
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def to_s
		puts "name：#{name}"
		"name：#{name}"
		"name：#{name}"
		"name：#{name}"
	end
end


Person.new('matz').to_f
SingleExtend.new('Mark Hsiu').to_f
