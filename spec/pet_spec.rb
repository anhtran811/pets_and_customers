require './lib/pet'

RSpec.describe Pet do
  it 'exists' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    expect(samson).to be_a(Pet)
  end

  it 'has a name' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    expect(samson.name).to eq("Samson")
  end

  it 'has a type' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    expect(samson.type).to eq(:dog)
  end

  it 'has an age' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    expect(samson.age).to eq(3)
  end

  it 'is not fed' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    expect(samson.fed?).to eq(false)
  end

  it 'can get fed' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    samson.feed

    expect(samson.fed?).to eq(true)
  end
end