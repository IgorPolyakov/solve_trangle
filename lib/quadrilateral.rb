class Quadrilateral
  attr_accessor :p_zero, :p_one, :p_two, :second_line, :p_third, :deviation
  def initialize
    @p_zero   = [0.0, 0.0]
    @p_one    = [0.0, 0.0]
    @p_two    = [0.0, 0.0]
    @p_third  = [0.0, 0.0]
  end
  def set_first_point(arr)
    @p_zero = arr
  end

  def set_second_point(arr)
    @p_one = arr
  end

  def get_half_point
    @p_two = [((@p_zero[0] + @p_one[0]) / 2.0), ((@p_zero[1] + @p_one[1]) / 2.0)]
    # [(@first[0] + @second[0]) / 2.0), (@first[1] + @second[1]) / 2.0)]
  end

  def get_third_point
    # http://paulbourke.net/geometry/circlesphere/2circle1.gif
    get_half_point
    puts get_length_line(@p_zero, @p_one)
    p @p_zero
    p @p_one
    p @p_two
    x_3 = @p_two[0] + ((@deviation * (@p_one[1] - @p_zero[1])) / get_length_line(@p_zero, @p_one))

    y_3 = @p_two[1] + ((@deviation * (@p_one[0] - @p_zero[0])) / get_length_line(@p_zero, @p_one))
    @p_third = [x_3, y_3]
  end

  def get_length_line(p_one, p_two)
    Math.sqrt( (p_two[0] - p_one[0])**2 + (p_two[1] - p_one[1])**2 )
  end
end