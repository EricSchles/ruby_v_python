def hello():
    print "Hello there"

def hi(greeting):
    print greeting

def hey(greeting="hey"):
    print greeting

def adder(x,y):
    return x+y

adding = adder

#Testing things:
hello()
hi("Hi there")
hey()
hey("what's up")
print adding(5,6)

