defmodule RomanNumeral do
  @moduledoc """
  Documentation for RomanNumeral.
  """

  def symbol_map() do
    [{1000, "M"},{900, "CM"},{500, "D"}, {400, "CD"}, {100, "C"}, {90, "XC"}, {50, "L"}, {40, "XL"},{10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}]
  end

  def next_symbol(number) do
    Enum.filter(symbol_map(), fn {val, numeral} -> val <= number end)
    |> List.first()
  end

  def convert(0, numeral), do: numeral
  def convert(number, numeral \\ "") do
    {value, symbol} = next_symbol(number)
    convert(number - value, numeral <> symbol)
  end

  def convert2(number) do
    cond do
      number >= 1000 -> "M" <> convert2(number - 1000)
      number >= 900 -> "CM" <> convert2(number - 900)
      number >= 500 -> "D" <> convert2(number - 500)
      number >= 400 -> "CD" <> convert2(number - 400)
      number >= 100 -> "C" <> convert2(number - 100)
      number >= 90 -> "XC" <> convert2(number - 90)
      number >= 50 -> "L" <> convert2(number - 50)
      number >= 40 -> "XL" <> convert2(number - 40)
      number >= 10 -> "X" <> convert2(number - 10)
      number == 9 -> "IX" <> convert2(number - 9)
      number >= 5 -> "V" <> convert2(number - 5)
      number == 4 -> "IV" <> convert2(number - 4)
      number <= 3 && number > 0 -> "I" <> convert2(number - 1)
      number == 0 -> ""
    end
  end
end
