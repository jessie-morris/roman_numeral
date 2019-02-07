defmodule RomanNumeral do
  @moduledoc """
  Documentation for RomanNumeral.
  """

  def convert(number) do
    case number do
      5 -> "V"
      1 -> "I"
    end
  end
end
