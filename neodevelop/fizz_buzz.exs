defmodule FizzBuzz do
  def fizbuzz(n) do
    Enum.each(1..n, fn e -> IO.puts(do_fizzbuzz(e)) end)
  end

  def do_fizzbuzz(n) do
    cond do
      rem(n, 3) == 0 && rem(n, 5) == 0 ->
        :fizz

      rem(n, 3) == 0 ->
        :fizz

      rem(n, 5) == 0 ->
        :buzz

      true ->
        n
    end
  end
end

FizzBuzz.fizbuzz(100)
