class RomanNumeral
    
  # I = 1
  # V = 5
  # X = 10
  # L = 50
  # C = 100
  # D = 500
  # M = 1000
  
  LOOKUP = {
    "i" => 1,
    "v" => 5,
    "x" => 10,
    "l" => 50,
    "c" => 100,
    "d" => 500,
    "m" => 1000
  }
  
  def initialize(roman_numeral)
    @roman_numeral = roman_numeral
  end
  
  def to_i
    acc = 0
    last_parsed = 0
    roman = @roman_numeral.reverse.split(//)
    roman.each do |last_character|
      digit_val = LOOKUP[last_character.downcase]
      
      if digit_val >= last_parsed
        acc += digit_val
      else
        acc -= digit_val
      end
      
      last_parsed = digit_val
    end
    
    acc
  end
end