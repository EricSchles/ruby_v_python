class Hello
  attr_accessor :thing
  def initialize(thing)
    @thing = thing
  end

  def get
    return @thing
  end

  def set(x)
    @thing = x
  end
end

class HelloThere < Hello
  def concatenate(x)
    @thing += x
  end
end


hi = Hello.new("hi")
puts hi.get
hi.set("hello")
puts hi.get

hi_t = HelloThere.new("Hi")
hi_t.concatenate(" there")
puts hi_t.get
