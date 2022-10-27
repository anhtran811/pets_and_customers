require './lib/groomer'
require './lib/customer'
require './lib/pet'

RSpec.describe Groomer do
  it 'exists' do
    groomer = Groomer.new('Healthy Paws')

    expect(groomer).to be_a(Groomer)
  end

  it 'has a name' do
    groomer = Groomer.new('Healthy Paws')

    expect(groomer.name).to eq('Healthy Paws')
  end

  it 'starts without customers' do
    groomer = Groomer.new('Healthy Paws')

    expect(groomer.customers).to eq([])
  end

  it 'can add customers with pets' do
    groomer = Groomer.new('Healthy Paws')
    joel = Customer.new("Joel", 2) 
    priya = Customer.new("Priya", 3)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
    pumba = Pet.new({name: "Pumba", type: :dog, age: 2})

    groomer.add_customers(joel)
    groomer.add_customers(priya)

    expect(groomer.customers).to eq([joel, priya])
  end

  it 'can find all customers with outstanding balances' do
    groomer = Groomer.new('Healthy Paws')
    joel = Customer.new("Joel", 2) 

    groomer.add_customers(joel)

    joel.charge(15)
    joel.charge(7)

    expect(groomer.customer_outstanding_balance).to eq([joel])
  end

  it 'can count the number of pets per type' do
    groomer = Groomer.new('Healthy Paws')
    joel = Customer.new("Joel", 2) 
    priya = Customer.new("Priya", 3)
    samson = Pet.new({
      name: "Samson", 
      type: :dog, 
      age: 3
      })
    lucy = Pet.new({
      name: "Lucy", 
      type: :cat, 
      age: 12
      })
    pumba = Pet.new({
      name: "Pumba", 
      type: :dog, 
      age: 2
      })

    groomer.add_customers(joel)
    groomer.add_customers(priya)

    joel.adopt(samson)
    joel.adopt(lucy)
    priya.adopt(pumba)

    expect(groomer.count_pet_by_type[:dog]).to eq(2)
  end
end


