import UIKit

//void형 함수
func sayHi(){
    print("Hello")
}
sayHi();

//파라미터
func sayHi2(name:String){
    print("Hello \(name)")
}
sayHi2(name: "ABC")

//Return 타입 있는 함수
func sayHi3(name:String) -> String {
    return "Hello " + name
}
print(sayHi3(name: "DEF"))

//default 파라미터 함수
func sayHi4(name:String = "GHI"){
    print("Hello \(name)")
}
sayHi4();
sayHi4(name: "oh")

//argument label 설정
func sayHi5(insert name:String, _ age:Int){
    print("Hello \(name) I'm \(age)")
}
sayHi5(insert:"A",3)
