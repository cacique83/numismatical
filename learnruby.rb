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

dog = Mammal.new('Sarge', 14, 'milk' 0,2,4,)
puts dog.name
puts dog.age
puts dog.feedswith
puts legs

class Reptile < Animal
	def initialize(reptile_name, reptile_age)
		super(reptile_name, reptile_age)
	end
	
end
lizard = Reptile.new('Jingjok', 3)
puts lizard.name
puts lizard.age



