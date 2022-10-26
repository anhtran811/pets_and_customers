class Pet
attr_reader :name, :type, :age, :fed

  def initialize(pet)
    @name = pet[:name]
    @type = pet[:type]
    @age = pet[:age]
    @fed = false
  end

  def fed?
    @fed
  end

  def feed
    @fed = true
  end
end