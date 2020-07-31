defmodule FizzBuzz do
  def fizzbuzz(n), do: fizzbuzz_calculate(n, [])

  defp fizzbuzz_calculate([], n), do: n
  defp fizzbuzz_calculate([h | t], n), do: fizzbuzz_calculate(t, n ++ [what_is(h)]
  defp what_is(h), do: remainder_for({h, h, h})
  defp remainder_for({f, b, _}) when rem(f, 3) == 0 and rem(b, 5) == 0, do: :fizzbuzz
  defp remainder_for({f, _, _}) when rem(f, 3) == 0, do: :fizz
  defp remainder_for({_, b, _}) when rem(b, 5) == 0, do: :buzz
  defp remainder_for({_, _, h}), do: h
end
