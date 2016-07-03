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

  def duality_and_element(n)
    return if n.nil?
    elements = [
      'Yang Wood',
      'Yin Wood',
      'Yang Fire',
      'Yin Fire',
      'Yang Earth',
      'Yin Earth',
      'Yang Metal',
      'Yin Metal',
      'Yang Water',
      'Yin Water'
    ]
    elements[n - 1]
  end

  def cardinal_direction(n)
    return if n.nil?
    if duality_and_element(n).match /Wood/
      'East'
    elsif duality_and_element(n).match /Fire/
      'South'
    elsif duality_and_element(n).match /Earth/
      'Center'
    elsif duality_and_element(n).match /Metal/
      'West'
    elsif duality_and_element(n).match /Water/
      'North'
    end
  end
end
