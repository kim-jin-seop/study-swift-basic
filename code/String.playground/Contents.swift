import UIKit

//세 줄짜리 문자열
var str = "Hello, playground \nnice meeting you \n\"I am beginner in swift\""

print(str)
print("===========")

var str2 = """
    Hello, playground
    nice meeting you
    "I am beginner in swift"
    """
print(str2)
print("===========")

//empty string
var emptystring = ""
var anotherEmptyString = String()

if emptystring.isEmpty {
    print("Nothind to see here")
}

print("===========")

//문자열 합치기
let string1 = "a"
let string2 = " b"

var welcome = string1 + string2
print(welcome)

var ins = "look over"
ins += string2

print(ins)

print(ins.count)
