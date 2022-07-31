//
//  main.swift
//  Day06
//
//  Created by TJ on 2022/07/31.
//

/*
 
 strNum[strNum.startIndex] // 1
 strNum[strNum.index(before: strNum.endIndex)] // 5
 strNum[strNum.index(after: strNum.startIndex)] // 2
 let index = strNum.index(strNum.startIndex, offsetBy: 3)
 strNum[index] // 4

 for i in 0...strNum.count {
   let index = str.index(str.startIndex, offsetBy: i)
    print("\(str[index])", terminator: " ") // 1 2 3 4 5
 }
 
 
 */

import Foundation


// 사용자로부터 더하기 할 숫자들의 갯수를 정한후에 숫자를 입력 받아서 합계를 구하자!
/*
var sumNum = 0
print("몇개의 숫자를 더할까요 ? ", terminator: "")

var inpNum = Int(readLine()!)

if let repNum:Int = inpNum {
    print("\(repNum)개의 숫자를 입력하세요.")
    // 사용하지 않는 변수는 _(언더라인)으로 표기
    for _ in 1...repNum {
        let innerCount = Int(readLine()!)
        sumNum += innerCount!
    }
    
    print("입력한 숫자의 합은 \(sumNum)입니다.")
    
} else {
    print("Input value is wrong!")
}
*/

// Exercise

/*
 
 입력한 자릿수 정수의 합을 구하는 프로그램
 
 Enter an Integer(0 ~ 9) : 1 2 3 4 5 6 7 8 Enter
 sum of digits = 36 // hint 10 진수
 
*/
/*
var div = 0
var temp = 0
var sum = 0




print("입력한 자릿수 정수의 합을 구하는 프로그램\n\n숫자를 입력하세요.")

var inpNum = Int(readLine()!)
var strNum = String(inpNum!)

if let repNum:Int = inpNum {
    div = repNum
    for _ in 1...strNum.count{
        temp = div % 10
        div = div / 10
        sum += temp
    }
    print(sum)
}else{
    print("숫자를 입력하세요.")
}
 */
//
//var remainder = 0  // 나머지 값
//var sumNo = 0 // 누적 합계
//
//print("Enter an Integer ( 0 ~ 9 ) : ",terminator: "")
//
//var inpNum = Int(readLine()!)
//
//if var repNum : Int = inpNum { // repNum : 몫
//    while repNum != 0{
//        remainder = repNum % 10
//        sumNo += remainder
//        repNum /= 10
//    }
//    print("Sum of digits = \(sumNo)")
//}else{
//    print("Input value is wrong!")
//}

/*
 --------------
 함수 (Function)
 --------------
*/

func integerSum(a: Int , b: Int ) -> Int {
    return a + b
}

func integerSum2 (num1 : Int, num2 : Int) -> String{
    return "\(num1) + \(num2) = \(num1 + num2)"
}

func integerSum3 (정수1 : Int, 정수2 : Int ) -> String{
    return "\(정수1) + \(정수2) = \(정수1 + 정수2)"
}



print(integerSum(a: 5, b: 8))
print(integerSum2(num1: 5, num2: 8))
print(integerSum3(정수1:5,정수2:8))

func sayHelloWorld() {
    print("Hello World!")
}

func sayHelloWorld2(cnt : Int) {
    for _ in 1...cnt{
        sayHelloWorld()
    }
}


sayHelloWorld2(cnt:3)

// Ex
// sayHelloWorl2 라는 함수 생성
// 사용법 sayHelloWorld2 (3)


func greeting (friend : String , me : String = "조조"){
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "유비", me: "조조")
greeting(friend: "장비", me: "조조")
greeting(friend: "관우", me: "조조")

greeting(friend: "제갈량")
greeting(friend: "마초",me: "동탁")
greeting(friend: "황충",me: "분노")

func greeting2 (friend : String = "유비", me :String = "조조"){
    print("Hello \(friend)! I'm \(me)")
}

greeting2()

// 가변 매개변수 ...
func sayHelloToFriends(me: String , friends: String... ) -> String {
    return "Hello \(friends) I'm \(me)"
}

print(sayHelloToFriends(me: "초선", friends: "손견","손책","동탁"))
print(sayHelloToFriends(me: "대교"))

// 복수의 값을 반환하는 함수
// 튜플을 Return 값으로 사용
func getCountry () -> (dialCode : Int, isoCode : String, name: String) {
    let country = (dialCode : 82, isoCode : "KR", name: "Korea")
    return country
}

let ret = getCountry()
print(ret)
print(ret.dialCode)

// OverLoading : 함수의 이름이 중복되도 파라미터의 갯수로 구분이 가능

// 도형의 면적 , 둘레를 구하는 함수를 구현하세요.

//원

func shape(_ r: Double){
    let PI = 3.14
    let area = PI * r * r
    let border = 2 * PI * r
    print("원 : \(area), \(border)")
}

//직각 사각형
func shape(_ w: Int, _ h : Int){
    let area = w * h
    let border = (w + h) * 2
    print("직사각형 : \(area), \(border)")
}

//직각 삼각형
func shape(_ w: Int, _ h : Int, _ l : Int){
    let area = w * h / 2
    let border = w + h + l
    print("직각삼각형 : \(area), \(border)")
}


// 원의 면적과 둘레를 구하기 !
shape(5)

// 직사각형의 면적과 둘레를 구하기 !
shape(5,6)

// 직각삼각형의 면적과 둘레를 구하기 !
shape(3, 4, 5)



