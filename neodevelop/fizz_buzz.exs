defmodule FizzBuzz do
  def fizbuzz(n) do
    Enum.map(1..n, fn e -> do_fizzbuzz(e) end)
  end

  def do_fizzbuzz(n) do
    cond do
      rem(n, 3) == 0 && rem(n, 5) == 0 ->
        :fizzbuzz

      rem(n, 3) == 0 ->
        :fizz

      rem(n, 5) == 0 ->
        :buzz

      true ->
        n
    end
  end
end

IO.inspect(FizzBuzz.fizbuzz(100))
