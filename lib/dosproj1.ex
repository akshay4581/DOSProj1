   defmodule Project1 do
     def main(args) do
       args
       |> parser
     end

     def parser([num, num2]) do
     n = elem(Integer.parse(num),0)
     k = elem(Integer.parse(num2),0)
     inp_console(n,k)
     end
     def inp_console(n,k) do
       {time,_} = :timer.tc(Boss, :run,[n,k])
       IO.puts "time = #{time/1000000}"
     end
   end
