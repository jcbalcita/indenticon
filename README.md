# Identicon
Built with guidance from Stephen Grider's Elixir course available on Udemy.com.

Uses the MD5 hashing algorithm to create a unique graphical identicon based on an input string.

## Elixir Code
The `main` function in the Identicon module is structured like so:

```elixir
def main(input) do
  input
  |> hash_input
  # => hashes the input string
  |> pick_color
  # => takes first three integers for r, g, b color
  |> build_grid
  # => chunks the list into 3's, flattens, then adds index to each element
  |> filter_odd_squares
  # => filters out the odd numbers in the list
  |> build_pixel_map
  # => maps coordinates for the colored squares
  |> draw_image
  # => creates 2D image with Erlang egd
  |> save_image(input)
  # => saves the image to file
end
```

## Running the code
- Install Elixir
- Run `iex -S mix` in the root directory
- Run `Identicon.main("your string here")`
- Find the image saved in the root directory
