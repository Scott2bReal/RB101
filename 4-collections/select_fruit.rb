produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  counter = 0
  fruits = {}
  things = hash.keys

  loop do
    break if counter == things.size

    if hash[things[counter]] == 'Fruit'
      fruits[things[counter]] = hash[things[counter]]
    end

    counter += 1
  end
  fruits
end

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
