# swift_basic
IOS개발자가 되기 위하여 swift를 공부하고 기초 문법을 정리

# 변수와 상수 선언

## 변수(variable)
변수는 항상 변할 수 있는 값  
선언하는 방법

```
var hello = "hello" 
var world : String = "world!"

print(type(of:a)) // String
print(type(of:b)) // String
```

## 상수(constant)
상수는 변할 수 없는 값. 
선언하는 방법  
```
let hello = 1
let hello : int = 2
```
# String
## 문자열 그대로 출력하기
```
var str = """
A is first
"B is second"
C is third
"""
```
\없이 개행과 특수문자 사용 가능

## empty 문자열
```
var empty1 = ""
var empty2 = String()

if empty1.isEmpty{
 // if empty1 is empty string
}
```
isEmpty : 빈 문자열이라면 true, 아니면 false

## 문자열 합치기
```
let a = "a"
let b = " b"

var first = a + b

var second = "c"
second += first // ca b
```
+연산자 활용해 합치기 가능, += 연산도 가능 연산 시 뒤에 붙음

# Array
## Mutable 배열 생성하는 방법
```
var emptyArray = Array<String>()
var emptyArray2 = [String]()
```


## 배열에 추가하는 방법1(append)
```
emptyArray2.append("Anna")
emptyArray2.append("Alex")
```
배열의 뒤쪽으로 계속해서 추가됨

## 배열에 추가하는 방법2(+=)
```
var array3 = ["A","B","C","D"]
array3 += ["E"]
array3 += ["F","G"]
```

## 배열에 추가하는 방법3(동시에 변경)
```
array3[3...5] = ["a","b","c"]
```
index 3,4,5를 각각으로 변경  

## 배열에 접근하는 방법
```
array3[3]
```
인덱스를 활용하여 접근(0부터 인덱스 시작)

## 배열의 특정 부분을 수정하는 법
```
array3[3] = "Hello"
```

## immutable 배열 선언
```
let array4 = ["a","b","c"]
```
let을 활용하여 배열을 만들면 된다.  
변경이 이루어지지 않으며, mutable한 배열보다 속도가 빠르기 때문에 데이터의 변경이 없다면, 위 배열을 사용하는 것이 효율적이다.


# Dictionary
## Mutable Dictionary 생성
```
var dictionary = Dictionary<String,Int>()
var dictionary2 = [String:Int]()
```

## Dictionary에 추가
```
dictionary2["and"] = 6
dictionary2["snake"] = 0
```
[]괄호 안에 key, 그리고 assignment뒤에  value  


## Dictionary 초기화
```
dictionary3 = ["and":6,"snake":0,"cat":4]
```
:을 활용하여 key와 value 구분하여 생성

## value 변경
```
dictionary3["cat"] = 5
```
기존에 있는 key값에 새로운 값을 assign

## immutable Dictionary 생성
```
let dictionary4 = ["ant":3,"snake":0,"cat":4]
```
배열과 동일하게 Dictionary도 immutable한 Dictionary가 속도가 빠름

# while문

## while문 선언과 사용

```
var index = 5

while index < 0{
  index -= 1
  print(index)
}
```

# For문
## 배열에서 사용하는 법
```
let names = ["a","b","c"]
for name in names {
    print(name)
}
```
python의 for-in 동일

## 사전에서 활용하는
```
let a = "a"
let b = " b"

var first = a + b

var second = "c"
second += first // ca b
```

## 숫자 범위로 사용하기
```
for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}

for _ in 1...5{
    print("Hello")
}
```

## stride 활용해서 사용하기
```
let minuteIntervel = 5
for tickMark in stride(from: 0, to: 50, by: minuteIntervel){
    print(tickMark)
}

for tickMark in stride(from: 0, through: 50, by: minuteIntervel){
    print(tickMark)
}
```
stride에서 to라면 값은 끝 값은 포함 안함  
through라면 끝의 값까지 포함하여 연산  
