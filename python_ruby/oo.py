class Hello:
    def __init__(self,thing):
        self.thing = thing

    def get(self):
        return self.thing

    def set(self,x):
        self.thing = x

class HelloThere(Hello):

    def concatenate(self,x):
        self.thing += x

hi = Hello("hi")
print hi.get()
hi.set("hello")
print hi.get()

hi_t = HelloThere("Hi")
hi_t.concatenate(" there")
print hi_t.get()
