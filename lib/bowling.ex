defmodule Bowling do

  def score([]), do: 0

  def score([[a,b]|rest]) when a + b == 10, do: a + b + hd(hd(rest)) + score(rest)

  #strike last frame

  def score([[10,b,c]]), do: 10 + b + c

  #strike second to last frame

  def score([[a,_b]|[[c,d,e]|rest]]) when a == 10 and c == 10 do
    a + c + d + score([[c,d,e]]++rest)
  end

  #strike before second to last frame

  def score([[a,_b]|[[c,d]|[[e,f,g]|rest]]]) when a == 10 and c == 10 do
    a + c + e + score([[c,d]]++[[e,f,g]]++rest)
  end

  #strike followed by strike

  def score([[a,_b]|[[c,d]|[[e,f]|rest]]]) when a == 10 and c == 10 do
    a + c + e + score([[c,d]]++[[e,f]]++rest)
  end

  #strike

  def score([[a,_b]|[[c,d]|rest]]) when a == 10 do
    a + c + d + score([[c,d]]++rest)
  end

  #score

  def score([[a,b]|rest]), do: a + b + score(rest)

  def score([[a,b,_c]]), do: a + b
end
