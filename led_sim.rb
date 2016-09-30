require "gosu"
require "chroma"

require_relative "lib/led"
require_relative "lib/matrix"
require_relative "lib/driver"

require_relative "lib/drivers/row_driver"
# Matrices are a row of LEDs
# A Driver contains the instructions for driving matrices
# LEDs are squares that can be on or off and have a color

class LEDSim < Gosu::Window
  def initialize
    super(500, 200, false)
    self.caption = "LED Simulator"
    @driver = RowDriver.new(1)
  end

  def draw
    @driver.draw
  end

  def update
    self.caption = "LED Simulator - #{Gosu.fps}"
    @driver.time = Gosu.milliseconds
    @driver.update
  end
end

LEDSim.new.show
