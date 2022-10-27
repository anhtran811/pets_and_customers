class Groomer
attr_reader :name, :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customers(customer)
    @customers << customer
  end

  def customer_outstanding_balance
    customer_with_balance = []
    @customers.each do |customer|
      if customer.outstanding_balance != 0
        customer_with_balance << customer
      end
    end
  end

  def count_pet_by_type
  customer_pets = []
    @customers.each do |customer|
      customer_pets << customer.pets
    end
    customer_pets
    pet_by_type = []
    customer_pets.each do |pet_type|
      require 'pry'; binding.pry
    end
  end
end

# nested arrays --> flatten
# collected then counted
# count enumerable


# * A Groomer can count the number of pets of a given type. 
#For example the groomer can count the number of cats, the number of dogs, etc. 
# This should work for any pet type.
