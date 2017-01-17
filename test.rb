class SomeUsefulClass
  def self.test_singleton
    puts self
  end
end

puts SomeUsefulClass
puts SomeUsefulClass.test_singleton