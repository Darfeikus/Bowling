defmodule Bowling do
  def score([]), do: 0

  # def score([ [first | [second | third] ] | rest ]) when first == 10 do
  #   if second do
  #     first + second + hd(third) + score(rest)
  #   else
  #     if hd(hd(rest)) != 10 do
  #       first + hd(hd(rest)) + hd(tl(hd(rest))) + score(rest)
  #     else
  #       [a|b] = rest
  #       if b == [] do
  #         first + hd(a) + hd(tl(a)) + score(rest)
  #       else
  #         first + hd(a) + hd(hd(b)) + score(rest)
  #       end
  #     end
  #   end
  # end

  # def score([[first | [second | third]] | rest]) when first + second == 10 do
  #   if third != [] do
  #     first + second + third + score(rest)
  #   else
  #     first + second + hd(hd(rest)) + score(rest)
  #   end
  # end

  def score([[first | [second | _third]] | rest]) do
    first + second + score(rest)
  end

end
