class LED
  attr_accessor :color, :position, :on
  def initialize(host, position = 0, color = Gosu::Color::WHITE)
    @host  = host
    @color = color
    @on    = false
    @position = position
    @width  = 40
    @height = 40
  end

  def draw
    draw_quad(@host.x+@host.offset(self)+(@width*@position), @host.y) if on
  end

  def draw_quad(x = 0, y = 0, z = 0, width = @width, height = @height, color = @color)
    return Gosu.draw_quad(x, y, color,
                         x, height+y, color,
                         width+x, height+y, color,
                         width+x, y, color,
                         z)
  end
end
