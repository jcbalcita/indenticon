defmodule Identicon do
  @moduledoc """
  Takes in a string and returns an identicon image.
  """

  def main(input) do
    input
    |> hash_input
    |> pick_color
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    # %Identicon.Image{hex: hex_list} = image
    # [r, g, b | _tail] = hex_list

    # %Identicon.Image{hex: [r, g, b | _tail]} = image
    # Refactor: Move pattern matching into argument list! (Wow!)

    %Identicon.Image{image | color: {r, g, b}}
  end
end
