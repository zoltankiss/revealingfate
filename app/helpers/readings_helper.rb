module ReadingsHelper
  def number_to_human_readable(n)
    case n
    when 1
      'first'
    when 2
      'second'
    when 3
      'third'
    when 4
      'forth'
    when 5
      'fifth'
    when 6
      'sixth'
    when 7
      'seventh'
    when 8
      'eight'
    when 9
      'ninth'
    when 10
      'tenth'
    end
  end
end
