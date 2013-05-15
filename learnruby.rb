#learning about git commit
#practicing commit again
#commit one more time
class Animal
	def initialize(animal_name, animal_age)
		@name = animal_name
		@age = animal_age

	end
	attr_reader :name, :age
end

class Mammal < Animal
	def initialize(mammal_name, mammal_age, mammal_legs)
		super(mammal_name, mammal_age)
		@legs = mammal_legs
	end

	attr_reader  :legs

	def feeds_baby_with
		'milk'
	end
end

dog = Mammal.new('Sarge', 14, 4)
puts dog.name
puts dog.age
puts dog.feeds_baby_with
puts dog.legs

gorilla = Mammal.new('Kong', 35, 2)
puts gorilla.name
puts gorilla.age
puts gorilla.feeds_baby_with
puts gorilla.legs

whale = Mammal.new('Moby', 95, 0)
puts whale.name
puts whale.age
puts whale.feeds_baby_with
puts whale.legs



class Reptile < Animal
	def initialize(reptile_name, reptile_age)
		super(reptile_name, reptile_age)
	end
	
end
lizard = Reptile.new('Jingjok', 3)
puts lizard.name
puts lizard.age



