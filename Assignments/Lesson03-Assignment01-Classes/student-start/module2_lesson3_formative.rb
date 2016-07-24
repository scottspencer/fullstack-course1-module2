class Person
  attr_accessor :first_name, :last_name

  @@people = []

  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
    @@people.push self
  end

  def self.search(last_name)
    @@people.select { |person| person.last_name == last_name }
  end

  #have a `to_s` method to return a formatted string of the person's name
  def to_s
    #return a formatted string as `first_name(space)last_name`
    "#{first_name} #{last_name}"
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith
