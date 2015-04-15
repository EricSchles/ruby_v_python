class Node:
    def __init__(self,data,next=None):
        self.data = data
        self.next = next
    def __str__(self):
        return repr(self.data)

#basic example
head = Node(0)
head.next = Node(1)
print head.next

#real linked list
head = Node(0)
cur = head
for i in xrange(10000):
    new_node = Node(i)
    cur.next = new_node
    cur = cur.next

cur = head
while cur:
    print cur
    cur = cur.next
