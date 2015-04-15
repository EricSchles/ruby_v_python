def hello
  puts "Hello there"
end

def hi(greeting)
  puts greeting
end

def hey(greeting="hey")
  puts greeting
end

class Add
  def adder(x,y)
    return x+y
  end
end

adder = Add.new
adding = adder.method(:adder)

#Testing everything out:
hello()
hi("hi there")
hey("what's up")
hey()
puts adding.call(5,6)

