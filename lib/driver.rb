class Driver
  attr_accessor :time, :looped, :matrices, :time_between_frames
  def initialize(n_matrices = 3, leds_per_row = 8, time_between_frames = 100, looped = false)
    @matrices = []
    @frames   = []
    @sub_frame= []
    @time = Gosu.milliseconds
    @last_frame_time = Gosu.milliseconds
    @frame_index = 0
    @time_between_frames = time_between_frames
    @looped = looped

    @fps_time = Gosu.milliseconds

    n_matrices.times {|i| @matrices.push(Matrix.new(leds_per_row, 20, (i*60)+20))}

    setup
  end

  def draw
    @matrices.each(&:draw)
  end

  def update
    if (@time-@last_frame_time) >= @time_between_frames
      @frames[@frame_index].each do |frame|
        frame[:led].color = frame[:color]
        frame[:led].on    = frame[:powered]
      end

      @frame_index+=1
      @frame_index = 0 if @frame_index >= @frames.count
      @last_frame_time = @time
    end

    # puts "#{Gosu.milliseconds-@fps_time}"
    @fps_time = Gosu.milliseconds
  end

  def setup
    puts "Number of frames: #{@frames.count}, time between frames: #{@time_between_frames}ms, time to complete cycle: #{@time_between_frames*@frames.count/1000.0}s"
  end

  def led(row, led, color, powered = false)
    _led    = @matrices[row-1].leds[led-1]
    _color = colorize(color)
    sub_set = {
      led:  _led,
      color: _color,
      powered: powered
    }

    @sub_frame.push(sub_set)
  end

  def row(matrix, *args)
    led_count = @matrices[matrix-1].leds.count
    args.count.times do |i|
      powered = false if args[i].downcase == 'off'
      powered = true if args[i].downcase != 'off'
      led(matrix, i+1, args[i], powered)
    end
    frame
  end

  def frame
    @frames.push(@sub_frame.dup)
    @subframe = []
  end

  def frame_delay(n)
    @time_between_frames = n
  end

  def colorize(color)
    if color.is_a?(Gosu::Color)
      color
    elsif color.is_a?(String)
      if color.downcase == 'off'
        Gosu::Color::WHITE
      else
        c = Chroma.paint(color).rgb
        Gosu::Color.rgb(c.r, c.g, c.b)
      end
    else
      Gosu::Color::WHITE
    end
  end
end
