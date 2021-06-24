import UIKit

//mutavble dictionary 생성
var dictionary = Dictionary<String,Int>()
var dictionary2 = [String:Int]()

if dictionary.isEmpty{
    print("nothing in dictionary")
}

//데이터 넣는 방법
dictionary2["ant"] = 6
dictionary2["snake"] = 0

print(dictionary2)

//초기화 하는 법
var dictionary3 = ["ant":3,"snake":0,"cat":4]
print(dictionary3)

//추가하는 법
dictionary3["human"] = 2
print(dictionary3)

//변경하는 법
dictionary3["cat"] = 5
print(dictionary3)

//데이터 가져오는 법
print(dictionary3["cat"])

//immutable dictionary
let dictionary4 = ["ant":3,"snake":0,"cat":4]
 
