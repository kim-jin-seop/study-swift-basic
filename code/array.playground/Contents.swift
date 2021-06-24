import UIKit

//mutable 배열 만드는 방법
var emptyArray = Array<String>()
var emptyArray2 = [String]()

print(emptyArray2.count)
print(emptyArray2)

//배열에 넣는 법
emptyArray2.append("Anna")
emptyArray2.append("Alex")
print(emptyArray2)

var array3 = ["A","B","C","D"]
print(array3)
array3 += ["E"]
array3 += ["F","G"]
print(array3)

//배열 접근하는 법 0부터
print(array3[2])

array3[3] = "Hello"
print(array3)

array3[3...5] = ["a","b","c"]
print(array3)

//immutable 배열
let array4 = ["a","b","c"]
print(array4)

//속도는 immutable이 더 빠름
