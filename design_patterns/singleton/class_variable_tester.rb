class ClassVariableTester
  @@class_count = 0

  def initialize
    @instance_count = 0
  end

  def increment
    @@class_count += 1
    @instance_count += 1
  end

  def to_s
    "class_count: #{@@class_count} instance_count: #{@instance_count}"
  end
end

if __FILE__ == $0
  c1 = ClassVariableTester.new
  c1.increment
  c1.increment
  puts "c1: #{c1}"

  c2 = ClassVariableTester.new
  puts "c2: #{c2}"
end
