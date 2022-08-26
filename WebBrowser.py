#creating a simple web browser in python
'''import socket
mysock=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysock.connect (("data.pr4e.org", 80))
cmd='GET http://data.pr4e.org/romeo.txt HTTP/1.0\n\n'.encode()
mysock.send(cmd)

while True:
    data=mysock.recv(512)
    if(len(data)<1):
        break
    print(data.decode())
mysock.close()

#using urlib in Python
import urllib.request, urllib.parse,urllib.error
fhand= urllib.request.urlopen('http://data.pr4e.org/romeo.txt')
counts=dict()
for line in fhand:
    print(line.decode().strip())
    
#opening the files and getting ready to append them to a dictionary  
import urllib.request, urllib.parse,urllib.error
fhand= urllib.request.urlopen('http://data.pr4e.org/romeo.txt')
counts=dict()
for line in fhand:
    words=line.decode().split()
    for word in words:
        counts[word]=counts.get(word,0) + 1
print(counts)'''


import urllib.request, urllib.parse,urllib.error
fhand= urllib.request.urlopen('http://www.dr-chuck.com/page1.htm')
for line in fhand:
    print(line.decode().strip())
    
    
#web scraping in python
import urllib.request, urllib.parse,urllib.error
from bs4 import  BeautifulSoup

url=input('Enter -')
html=urllib.request.urlopen(url).read()
soup= BeautifulSoup(html, 'html.parser')

#Retrieve all of the anchor tags
tags= soup('a')
for tag in tags:
    print(tag.get('href', None))
    

