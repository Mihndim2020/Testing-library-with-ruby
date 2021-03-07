def leap_year?(year)
  year % 400 == 0 or year % 100 != 0 and year % 4 == 0
end

if $0 == __FILE__
  def assert_equal(expected, actual, method)
    if expected == actual
      puts "#{method} returned #{actual} as expected."
    else 
      puts "Kaput! #{method} did not return #{expected}, as expected, but actually returned #{actual}."
    end
  end
  
  date = {
    2001 => false,
    1900 => false,
    2000 => true,
    2004 => true
  }

  data.each do |year, expected|
    actual = leap_year?(year)
    assert_equal(expected, actual, "leap_year?(#{year})")
  end
end