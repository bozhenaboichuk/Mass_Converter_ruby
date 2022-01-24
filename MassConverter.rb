class Value

  def initialize(weight)
    @weight=weight
  end

  def displayInfo
    puts @weight
  end

  attr_reader :weight
end

class Gramm < Value
  def initialize(weight)
    super(weight*0.001)
  end
  puts "New object Gramm is created."
end

class Pounds < Value
  def initialize(weight)
    super(weight*0.453592)
  end
  puts "New object Pounds is created."
end

class Pood < Value
  def initialize(weight)
    super(weight*16.3807)
  end
    puts "New object Pood is created."
end

class File
  def self.key(key)
    file_read = File.open('data.txt', 'r')

    file_read.each_with_index  do |line, index|
      if line.include?(key)
        index1 = line.index(key)
        data = line.gsub(/[^0-9]/, '').to_f
        return data
      end
    end
  end

  def self.file_write(obj,name_value)
    file_write = File.open('result.txt', 'a')
    file_write.puts("from #{name_value} to kg #{obj.weight}")
  end
end



  gramm = Gramm.new(File.key("gramm"))
  gramm.weight
  gramm.displayInfo
  File.file_write(gramm,"gramm")


  pound = Pounds.new(File.key("pound"))
  pound.weight
  pound.displayInfo
  File.file_write(pound,"pound")

  pood = Pood.new(File.key("pood"))
  pood.weight
  pood.displayInfo
  File.file_write(pood,"pood")
