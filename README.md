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

# if문

## if문 선언과 사용 방법

```
let age = 7
if age < 3 {
    print("Baby")
}
else if age >= 3 && age < 20{
    print("Child")
}
else{
    print("Adult")
}
```
일반적으로 사용하는 if문과 동일함

# Switch문
## switch문 사용하는 방법
```
switch age {
case 0,1,2 :
    print("Baby")
case 3...19 :
    print("Child")
default :
    print("Adult")
}

```
switch문은 기존에 내가 알고 있던 switch에 비해 상당히 강력함.
1. ,를 활용하여 여러가지 조건에서 확인할 수 있음.  
2. where절을 활용하여 추가적인 조건을 줄 수 있음  
3. break문이 필요 없음  

# 함수

## void형 함수

```
func hello(){
  print("Hello")
}
```
반환하는 타입이 없음

## Return
```
func hello2() -> String{
  return "Say Hello"
}
```
반환하는 타입 : String

## Parameter
```
func add(a:Int, b:Int) -> Int{
  return a + b
}

add(a:3 , b:4)
```
parameter와 argument label이 동일  

## Default parameter
```
func add2(a:Int = 3, b:Int) -> Int{
  return a + b
}
```
a 파라미터에 기본값 3, 만약 argument a에 대입이 없으면 a = 3

## Argument Label
```
func add3(a first:Int, _ second:Int) -> Int{
  return first + second
}
add3(a:4,5)
```
add3에서 a는 argument label  
first는 parameter  
argument label에 '_'를 사용하면 함수 호출 시 그냥 값만 적으면 됨.  

# 구조체

## 구조체가 필요한 이유
```
var name = ["Park","Choi","Kim","Lee"]
var age = [3,4,5,6]
var height = [40,50,60,70]
```
한 인물의 데이터를 위처럼 배열을 활용해 넣으면 가독성이 떨어지고, 배열 각각을 일일히 써야하기에 어려움

## 구조체 선언
```
struct Student{
    var name: String
    var age: Int
    var height: Int
}
```
구조체를 선언하는 방법


## 구조체 생성
```
var student1 = Student(name: "Park", age: 3, height: 40)
var student2 = Student(name: "Choi", age: 4, height: 50)

```
구조체를 생성하는 방법은 위 처럼 각각의 변수에 데이터를 넣어주면 됨

## 구조체 사용
```
print(student1.name, student1.age, student1.height)
```
구조체를 사용하기 위해서 '.'을 활용함

# Optional

## Optional 변수
swift에서 지금까지 배운 변수는 항상 초기화를 시켜주었음.   
nil값이 있으면 연산중에 runtime에 프로그램이 종료되기 때문에 문제가 됨.  
따라서 Optional를 활용하여 nil값이 있을 경우 문제를 해결 할 수 있음.

## Optional 선언
```
var varName:Int?
```
?를 타입 뒤에 붙여서 선언  
초기화를 시켜주지 않아도 됨  

## 캐스팅
```
let possibleNumber = "f"
let convertedNumber = Int(possibleNumber)
```
캐스팅을 시켜주면 optional 변수로 캐스팅이 됨  
그 이유는, 위 예처럼 string을 integer로 캐스팅 할 경우 nil값으로 캐스팅해 주어야 하기 때문이다.  

## optional 변수 사용 1
```
if convertedNumber != nil{
    print(convertedNumber!)
}
```
변수 뒤에 !를 붙이면 강제로 optional을 벗기기 가능  
이때 주의점은 해당 변수가 nil이 아닐 때만 사용해야함.  

## optional 변수 사용 2
```
if let actualNumber = Int(possibleNumber) {
    print(actualNumber)
}
```
위 처럼 if문을 사용 시 possibleNumber가 nil이 아니면 if문 실행  
nil일 경우 else문을 실행함
