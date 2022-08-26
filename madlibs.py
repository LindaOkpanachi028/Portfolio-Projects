
#creating a madlibs game
#suppose we want to create astring that says "subscribe to _____"
from http.client import NON_AUTHORITATIVE_INFORMATION
from sunau import AUDIO_FILE_ENCODING_MULAW_8


youtuber="Linda Okpanachi" #some string variable

print("subscribe to " + youtuber)
print("subsribe to {}".format(youtuber))
print(f"subscribe to {youtuber}")
print("subscribe to %s" %youtuber)

NOUN= input("A noun: ")
ANIMAL=input("An animal: ")
ADJECTIVE=input("An Adjective: ")
PLACE=input("Enter a place: ")
VERB= input("Enter the verb chosen: ")

madlib= f"All of my {NOUN}, I wanted a {ANIMAL}! to {VERB} with in the {PLACE}.\
A {ANIMAL} would be so {ADJECTIVE}, soft, and cuddly. "

print(madlib)

#functions


def repeat_lyrics():
    print_lyrics()
    print_lyrics()


def print_lyrics():
    print("I'm a lumberjack, and I'm okay.")
    print('I sleep all night and I work all day.')    

repeat_lyrics()

print("Enter score: ")
try:
    Score= float(input())
except:
    print("Enter integre or float values only")    

def computegrade(Score):
    if Score >=0.9:
        return "A"
    elif Score >=0.8:
        return "B"
    elif Score >=0.7:
        return "C"
    elif Score >=0.6:
        return "D"
    else:
        return "F"
    

print("The Grade is ",computegrade(Score))


def thing():
    print('Hello')
 
print('There')

def stuff():
    print('Hello')
    return
    print('World')
 
stuff()

count = 0
for itervar in [3, 41, 12, 9, 74, 15]:
    count = count + 1
print('Count: ', count)



maximum=None
minimum=None


while True:
    inp=input("Enter a value: ")
    if inp=="done":
        break
    try:
        inp=float(inp)
    except:
        print("Enter a valid number or enter 0 to end the list")    
        continue
    if maximum==None or inp > maximum:
        maximum=inp
    if minimum==None: 
        minimum=inp
    elif inp < minimum:


    
#print (c
        minimum=inp
        
print("The minimum number is:", minimum)
print("The maximum number is:", maximum)
    

letter= "banana"
count=0
for x in letter:
    
    if x=="a":
        count=count+1
print(count)   

print(letter.count("a"))     

data = 'From linda.okpanachi@fulokoja.edu.ng Sat Jan  5 09:14:16 2008'
atpos= data.find("@")
print(atpos)

end= data.find('', atpos)
print(end)
#string slicing 
#real_data= data[atpos+1: end]
#print(real_data)

data = 'From linda.okpanachi@fulokoja.edu.ng Sat Jan  5 09:14:16 2008'
 
 
atpos = data.find('@')
print(atpos)
sppos = data.find(' ',atpos)
print(sppos)
host = data[atpos+1:sppos]
print(host)


str = 'X-DSPAM-Confidence: 0.8475 '
str.strip()
space=str.find(":")
print(space)
#end= str.find('',)
value=str[space+1:]
value=float(value)
print(value)


str1 = "Hello"
str2 = 'there'
bob = str1 + str2
print(bob)
dir(str1)'''

def chop(t):
    del t[0]
    del t[-1]
def middle(t):
    del t[0]
    del t[-1]
    return t

num=[1,2,3,4]
rest=chop(num)
print(rest)


ginger=[1,2,3,4,5]
middle(ginger)
print(ginger)


#number=middle(num)
#print(number)    
