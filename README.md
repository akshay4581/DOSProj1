# Dosproj1

Group Members: 
---------------
Akshay Rechintala (UFID: 4581-6988)
Keerthi Gudur (UFID: 8241-4961)

The overall goal of your program is to find all k consecutive numbers starting at 1 and up to N, such that the sum of squares
is itself a perfect square (square of an integer).
Instruction to run code:
------------------------
mix run lib/dosproj1.ex n k. This command is for Windows OS. 
The format of output is just numbers displayed on the console. If the result is an empty set, there is no display.

Size of the work unit:
-----------------------
Through trial and error method, we observed that when the number of processes spawned equals 8, the running time of the program reduced. 
This could be due to the fact that when too many processes are generated, the CPU(having 8 threads) can run only 8 processes at once and extra 
resources and time are wasted in managing the extra processes spawned.

Result of running the program:
------------------------------
There is no number in this range whose sum of k consecutive squares results in a perfect square.

Running Time for the application:
---------------------------------
running time = user+system/real
			= 6.641+0.057/2.022
			= 3.3125
(Refer to Running Time.jpg)

Largest problem that we managed to solve in reasonable time:
-------------------------------------------------------------
10000000 4
(Refer to Largest Problem.png)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `dosproj1` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:dosproj1, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/dosproj1](https://hexdocs.pm/dosproj1).

