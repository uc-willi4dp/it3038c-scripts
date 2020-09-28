import time
programAge = time.time() -start_time
print ('what is your name?')
myName = input()
print ('Hello, ' + myName + '. That is a good name. How old are you')
myAge = int(input())
print('%s? Thats funny, Im only a %s seconds old.'% (myAge, ))
print("I wish I was %s years old" % (myAge * 2))
time.sleep(3)
print("I'm tired. I go sleep sleep now.")