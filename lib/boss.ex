defmodule Boss do
  def run(n,k) do
   num_proc = min(n, 8)

    batch = div(n, num_proc)
    IO.puts "batch size= #{batch}"
    assign(n,k,batch,1,batch)

  end

  def assign(n,k,batch,start,till) do

    pid = spawn(Worker, :com, [self()])
    send pid, {:solve,start,k,till}
    start = start+batch
    finish = start+batch
    finish = finish-1

    if finish <= n do
      assign(n,k,batch,start,finish)
    end
    receive do

      {:done} -> nil

    end
  end
end
