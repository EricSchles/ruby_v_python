class MyClass
  def myMethod(x)
    return "Hi"+x
  end
end

x = MyClass.new
m = x.method(:myMethod)
# => #<Method: MyClass#myMethod>

puts m.call("there")
