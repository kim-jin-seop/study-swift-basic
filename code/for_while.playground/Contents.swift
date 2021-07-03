import UIKit

var age = 0

// while문
while age < 5 {
    age += 1
    print(age)
}

//for 문
let names = ["a","b","c"]
for name in names {
    print(name)
}

//for 문 - 사전
let numberOfLegs = ["ant" : 6, "snake" : 0, "dog" : 4]
for(animalName, legsCount) in numberOfLegs{
    print("\(animalName) have \(legsCount) legs")
}

//for 문 2
for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}

for _ in 1...5{
    print("Hello")
}

//stride 활용
let minuteIntervel = 5
for tickMark in stride(from: 0, to: 50, by: minuteIntervel){
    print(tickMark)
}

for tickMark in stride(from: 0, through: 50, by: minuteIntervel){
    print(tickMark)
}
