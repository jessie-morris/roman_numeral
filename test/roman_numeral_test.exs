defmodule RomanNumeralTest do
  use ExUnit.Case

  test "when provided 1, returns I" do
    assert RomanNumeral.convert(1) == "I"
  end
  test "when provided 2 returns II" do
    assert RomanNumeral.convert(2) == "II"
  end
  test "when provided 4 returns IV" do
    assert RomanNumeral.convert(4) == "IV"
  end
  test "when provided 5 returns V" do
    assert RomanNumeral.convert(5) == "V"
  end
  test "when provided 9 returns IX" do 
    assert RomanNumeral.convert(9) == "IX"
  end
  test "when provided 10 returns X" do
    assert RomanNumeral.convert(10) == "X"
  end
  test "when provided 20 returns XX" do
    assert RomanNumeral.convert(20) == "XX"
  end
  test "when provided 30 returns XXX" do
    assert RomanNumeral.convert(30) == "XXX"
  end
  test "when provided 40 returns XL" do
    assert RomanNumeral.convert(40) == "XL"
  end
  test "when provided 49 returns XLIX" do
    assert RomanNumeral.convert(49) == "XLIX"
  end
  test "when provided 50 returns L" do
    assert RomanNumeral.convert(50) == "L"
  end
  test "when provided 99 returns XCIX" do
    assert RomanNumeral.convert(99) == "XCIX"
  end
  test "when provided 100 returns C" do
    assert RomanNumeral.convert(100) == "C"
  end
  test "when provided 101 returns CI" do
    assert RomanNumeral.convert(101) == "CI"
  end
  test "when provided 1000 returns M" do
    assert RomanNumeral.convert(1000) == "M"
  end
  test "when provided 1999 returns MCMXCIX" do
    assert RomanNumeral.convert(1999) == "MCMXCIX"
  end
end
