hash_mixed_keys = { 1 => 1, 'two' => 2, :three => 3 }
hash_mixed_values = { one: 1, two: 2, three: 3 }
hash_mixed_keys_and_values = { 1 => 'one', 'two' => 2, :three => [3] }

hash_mixed_keys.each do |key, value|
  puts key, value
end

hash_mixed_values.each do |key, value|
  puts key, value
end

hash_mixed_keys_and_values.each do |key, value|
  puts key, value
end
