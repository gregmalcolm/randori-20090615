require "test/unit"

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '../lib')
require "roman_numeral"

class TestRomanNumeral < Test::Unit::TestCase

   TESTS = {
     'X' => 10,
     'I' => 1,
     'II' => 2,
     'III' => 3,
     'CCXCI' => 291
   }
   
  def test_instantiantion
    assert RomanNumeral.new('X')
  end

  def test_roman_to_arabic 
    TESTS.each do | roman, arabic|
      romnum = RomanNumeral.new(roman)
      assert(arabic == romnum.to_i)
    end  
  end
            
  def test_converting_from_roman_to_arabic
    romnum = RomanNumeral.new('X')
    assert 10 == romnum.to_i
  end

  def test_converting_from_roman_to_arabic_1
    romnum = RomanNumeral.new('I')
    assert 1 == romnum.to_i
  end
    
  def test_converting_from_roman_to_arabic_2
    romnum = RomanNumeral.new('II')
    assert 2 == romnum.to_i
  end 

  def test_converting_from_roman_to_arabic_6
    romnum = RomanNumeral.new('VI')
    assert 6 == romnum.to_i
  end 

  def test_converting_from_roman_to_arabic_4
    romnum = RomanNumeral.new('IV')
    assert 4 == romnum.to_i
  end 
  
  def test_converting_from_roman_to_arabic_29
    romnum = RomanNumeral.new('XXIX')
    assert 29 == romnum.to_i
  end 

  def test_converting_from_roman_to_arabic_14
    romnum = RomanNumeral.new('XIV')
    assert 14 == romnum.to_i
  end 
  
end