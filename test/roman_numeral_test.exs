defmodule RomanNumeralTest do
  use ExUnit.Case

  test "when provided 1, returns I" do
    assert RomanNumeral.convert(1) == "I"
  end
  test "when provided 5 returns V" do
    assert RomanNumeral.convert(5) == "V"
  end
end
