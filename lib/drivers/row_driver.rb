class RowDriver < Driver
  def setup
    frame_delay(100)
    led(1,1,'green',true)
    led(1,2,'orange',true)
    led(1,3,'orange',true)
    led(1,4,'orange',true)
    led(1,5,'orange',true)
    led(1,6,'orange',true)
    led(1,7,'orange',true)
    led(1,8,'green',true)
    frame
    led(1, 1, 'green', true)
    led(1, 8, 'green', true)
    frame
    led(1, 1, 'orange', true)
    led(1, 2, 'green', true)
    led(1, 7, 'green', true)
    led(1, 8, 'orange', true)
    frame
    led(1, 1, 'orange', true)
    led(1, 2, 'orange', true)
    led(1, 3, 'green', true)
    led(1, 6, 'green', true)
    led(1, 7, 'orange', true)
    led(1, 8, 'orange', true)
    frame
    led(1, 1, 'orange', true)
    led(1, 2, 'orange', true)
    led(1, 3, 'orange', true)
    led(1, 4, 'green', true)
    led(1, 5, 'green', true)
    led(1, 6, 'orange', true)
    led(1, 7, 'orange', true)
    led(1, 8, 'orange', true)
    frame
    led(1, 1, 'orange', true)
    led(1, 2, 'orange', true)
    led(1, 3, 'green', true)
    led(1, 4, 'orange', true)
    led(1, 5, 'orange', true)
    led(1, 6, 'green', true)
    led(1, 7, 'orange', true)
    led(1, 8, 'orange', true)
    frame
    led(1, 1, 'orange', true)
    led(1, 2, 'green', true)
    led(1, 3, 'orange', true)
    led(1, 4, 'orange', true)
    led(1, 5, 'orange', true)
    led(1, 6, 'orange', true)
    led(1, 7, 'green', true)
    led(1, 8, 'orange', true)
    frame
    led(1, 1, 'green', true)
    led(1, 2, 'orange', true)
    led(1, 3, 'orange', true)
    led(1, 4, 'orange', true)
    led(1, 5, 'orange', true)
    led(1, 6, 'orange', true)
    led(1, 7, 'orange', true)
    led(1, 8, 'green', true)
    frame
    super
  end
end
