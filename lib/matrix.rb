class Matrix
  attr_accessor :x, :y, :leds, :offset, :time
  def initialize(n_of_leds, x = 0, y = 0, offset = 20)
    @leds = []
    @x, @y = x, y
    @offset = offset
    @time = 0
    n_of_leds.times {|i| @leds.push(LED.new(self, i))}
  end

  def draw
    @leds.each(&:draw)
  end

  def update
    update_matrix
  end

  def offset(led)
    return @leds.index(led)*@offset
  end

  def update_matrix
  end
end
