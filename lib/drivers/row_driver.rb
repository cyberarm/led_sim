class RowDriver < Driver
  def setup
    # frame_delay(300)
    row(1, 'green', 'orange', 'orange', 'orange', 'orange', 'orange', 'orange', 'green')
    row(1, 'green', 'orange', 'orange', 'orange', 'orange', 'orange', 'orange', 'green')
    row(1, 'orange', 'green', 'orange', 'orange', 'orange', 'orange', 'green', 'orange')
    row(1, 'orange', 'orange', 'green', 'orange', 'orange', 'green', 'orange', 'orange')
    row(1, 'orange', 'orange', 'green', 'orange', 'orange', 'green', 'orange', 'orange')
    row(1, 'orange', 'orange', 'orange', 'green', 'green', 'orange', 'orange', 'orange')
    row(1, 'orange', 'orange', 'green', 'orange', 'orange', 'green', 'orange', 'orange')
    row(1, 'orange', 'green', 'orange', 'orange', 'orange', 'orange', 'green', 'orange')
    row(1, 'green', 'orange', 'orange', 'orange', 'orange', 'orange', 'orange', 'green')
    super
  end
end
