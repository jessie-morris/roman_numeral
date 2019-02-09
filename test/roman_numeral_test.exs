defmodule RomanNumeralTest do
  use ExUnit.Case
  import Checkov

  data_test "#{number} converts to #{expected} recursive" do
    assert RomanNumeral.convert(number) == expected

    where([
      [:number, :expected],
      [1, "I"],
      [2, "II"],
      [3, "III"],
      [5, "V"],
      [9, "IX"],
      [10, "X"],
      [20, "XX"],
      [30, "XXX"],
      [40, "XL"],
      [49, "XLIX"],
      [50, "L"],
      [99, "XCIX"],
      [100, "C"],
      [400, "CD"],
      [500, "D"],
      [1000, "M"],
      [1999, "MCMXCIX"]
    ])
  end

  data_test "#{number} converts to #{expected} cond waterfall" do
    assert RomanNumeral.convert2(number) == expected

    where([
      [:number, :expected],
      [1, "I"],
      [2, "II"],
      [3, "III"],
      [5, "V"],
      [9, "IX"],
      [10, "X"],
      [20, "XX"],
      [30, "XXX"],
      [40, "XL"],
      [49, "XLIX"],
      [50, "L"],
      [99, "XCIX"],
      [100, "C"],
      [400, "CD"],
      [500, "D"],
      [1000, "M"],
      [1999, "MCMXCIX"]
    ])
  end
end
