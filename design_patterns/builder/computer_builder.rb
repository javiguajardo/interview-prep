require_relative 'computer'
require_relative 'turbo_cpu'
require_relative 'drive'
require_relative 'motherboard'

class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def turbo(has_turbo_cpu=true)
    @computer.motherboard.cpu = TurboCPU.new
  end

  def display=(display)
    @computer.display = display
  end

  def memory_size=(size_in_mb)
    @computer.motherboard.memory_size = size_in_mb
  end

  def add_cd(writer=false)
    @computer.drives << Drive.new(:cd, 760, writer)
  end

  def add_dvd(writer=false)
    @computer.drives << Drive.new(:dvd, 4000, writer)
  end

  def add_hard_disk(size_in_mb)
    @computer.drives << Drive.new(:hard_disk, size_in_mb, true)
  end
end

if __FILE__ == $0
  builder = ComputerBuilder.new
  builder.turbo
  builder.add_cd(true)
  builder.add_dvd
  builder.add_hard_disk(100000)
  computer = builder.computer
  p "Computer: #{computer.inspect}"
end
