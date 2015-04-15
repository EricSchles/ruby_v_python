class Node
  attr_accessor :data, :next_
  def initialize(data,next_ = nil)
    @data = data
    @next_ = next_
  end
  def to_s
    return @data.to_s
  end
end

#basic example
head = Node.new(0)
head.next_ = Node.new(1)
puts head.next_

head = Node.new(0)
cur = head
for i in 0..10000
  new_node = Node.new(i)
  cur.next_ = new_node
  cur = cur.next_
end

cur = head
while cur
  puts cur
  cur = cur.next_
end
