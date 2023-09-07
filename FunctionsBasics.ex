#print hello world
spawn fn -> IO.puts "Hello World" end


defmodule HelloSimple do
  def greet do
    IO.puts "Hello World"
  end
end

#spawn HelloSimple, :greet, []

defmodule HelloParameter do
  def greet do
    receive do
      :greetings -> IO.puts "Hello World"
    end
  end
end

"""
pid = spawn HelloParameter, :greet, []
send(pid, :greetings) Only returns once and exits
"""
#LOOPING

defmodule HelloLoop do
  def greet do
    receive do
      :greetings -> IO.puts "Hello World"
    end
    greet()
  end
end

"""
pid = spawn HelloLoop, :greet, []
send(pid, :greetings) keeps returning whenever called
"""
defmodule HelloLoopRandom do
  def greet do
    receive do
      :greetings -> IO.puts "Hello World"
      _          -> IO.puts "What" #returns what parameter is not greetings
    end
    greet()
  end
end

"""
pid = spawn HelloLoop, :greet, []
send(pid, :greetings) #returns hello world
send(pid, :randomx) #returns what
"""

defmodule HelloLoopReload do
  def greet do
    receive do
      #first
      :greetings -> IO.puts "Hello"
       #then
      #:greetings -> IO.puts "Hello, Updated!"
      greet()
      :reload -> IO.puts "Reloading"
      HelloLoopReload.greet()
    end
  end
end

"""
pid = spawn HelloLoopReload, :greet, []
send(pid, :greetings) # returns Hello
Do update the code then run r HelloLoopReload
send(pid, :reload) # returns Reloading
send(pid, : greetings) #returns Hello Updated!
"""
