defmodule RomanNumeral do
  @moduledoc """
  Documentation for RomanNumeral.
  """

  def convert(number) do
    cond do
      number >= 1000 -> "M" <> convert(number - 1000)
      number >= 900 -> "CM" <> convert(number - 900)
      number >= 100 -> "C" <> convert(number - 100)
      number >= 90 -> "XC" <> convert(number - 90)
      number >= 50 -> "L" <> convert(number - 50)
      number >= 40 -> "XL" <> convert(number - 40)
      number >= 10 -> "X" <> convert(number - 10)
      number == 9 -> "IX" <> convert(number - 9)
      number >= 5 -> "V" <> convert(number - 5)
      number == 4 -> "IV" <> convert(number - 4)
      number <= 3 && number > 0 -> "I" <> convert(number - 1)
      number == 0 -> ""
    end
  end
end
