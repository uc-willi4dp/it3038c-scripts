import random
randomNumber = random.randrange(0, 100)
print(randomNumber)
print('Guess a number between 0-100: ')
flag = 0
while flag < 1:
    guessNumber = int(input())
    if guessNumber == randomNumber:
        print('Congrats then number is correct!')
        flag = 1
    elif guessNumber >= randomNumber:
        print('The number you chose is too high!')
    else:
        print('The number you chose is too low!')
