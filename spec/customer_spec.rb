require './lib/customer'
require './lib/pet'

RSpec.describe Customer do
  it 'exists' do
    joel = Customer.new("Joel", 2)

    expect(joel).to be_a(Customer)
  end

  it 'has a name' do
    joel = Customer.new("Joel", 2)

    expect(joel.name).to eq("Joel")
  end

  it 'has an id' do
    joel = Customer.new("Joel", 2)

    expect(joel.id).to eq(2)
  end

  it 'starts with no pets' do
    joel = Customer.new("Joel", 2)

    expect(joel.pets).to eq([])
  end

  it 'can adopt pets' do
    joel = Customer.new("Joel", 2) 
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})

    joel.adopt(samson)
    joel.adopt(lucy)

    expect(joel.pets).to eq([samson, lucy])
  end

  it 'can has a starting balance of 0' do
    joel = Customer.new("Joel", 2)

    expect(joel.outstanding_balance).to eq(0)
  end

  it 'can charge to the balance' do
    joel = Customer.new("Joel", 2) 

    joel.charge(15)
    joel.charge(7)

    expect(joel.outstanding_balance).to eq(22)
  end
end