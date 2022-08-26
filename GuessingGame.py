'''import random


def guess (x):
    random_number= random.randint(2,x)
    guess=0
    while guess!=random_number:
        guess=int(input(f"guess a number between 2 and {x}: "))
        
        if guess < random_number:
            print("sorry the guess is less than the random number")
        elif guess > random_number:
            print("sorry the guess is greater than the random number")
        
    print  ("guess is just correct") 


guess(10)            '''

largest = None
smallest = None
while True:
    num = input("Enter a number: ")
    if num == "done":
        break
    try:
        num = int(num)
    except:
        print("Invalid input")
        continue 
   
    if largest==None or num > largest:
        largest = num
    elif smallest==None or smallest > num:
        smallest = num

print("Maximum is", largest)
print("Minimum is", smallest)
        

