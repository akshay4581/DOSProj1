defmodule Worker do
  def com(scheduler) do
    receive do
      {:solve, i,k,till} ->
        calculate(i,k,till)
        send scheduler,{:done}

    end
  end

  def calculate(i,k,till) do
    if each(i,k) do
      IO.puts i
    end
    if i<till do
      calculate(i+1,k,till)
    end
  end

  def each(n,k) when k>0 do
    acc_root = :math.sqrt(div((n+k-1)*(n+k)*(2*n+2*k-1), 6) - div((n-1)*n*(2*n - 1), 6))
    root = Float.floor(acc_root)
    result =
    if root == acc_root do
      true
    else
      false
    end
    result
  end
end
