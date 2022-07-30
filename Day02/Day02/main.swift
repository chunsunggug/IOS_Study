//
//  main.swift
//  Day02
//
//  Created by TJ on 2022/07/17.
//

import Foundation

// 문자열과 문자의 결합
let string1 = "hello"
let string2 = " there"

var welcome = string1 + string2

print(welcome)

var instruction = "look over"
instruction += string2
print(instruction)

let exclamationMark1: String = "!"
welcome.append(exclamationMark1)
print(welcome)

// 문자열 길이
let str : String = "123,456,789"
print(str.count)

if str.count == 0 {
    print("DATA가 없습니다.")
} else{
    print("DATA는 \(str)입니다.")
}

// Any == java.Object
var someAny : Any = 100
print(someAny)
someAny = "abcd";
print(someAny)
someAny = 123.12
print(someAny)

var someDouble : Double = 12.11
// print(someDouble+someAny)

// Any를 Double로 변환시 Any는 다양한 타입을 가지고 있어 as키워드를 통해 형변환 가능
let someAny1 : Double = someAny as! Double
print(someDouble + someAny1)

// nil : null, NULL, Null, NA, NaN , Nan ...
/*

 - nil은 없음을 의미하는 키워드
 - nil은 데이터는 없으나 변수는 존재하는 상태
 
*/

// Tuple
// Tuple 사용전 선언 및 출력방법

var dialCode = 82
var isoCode =  "KR"
var name = "Korea"

print("\(dialCode),\(isoCode),\(name)")

// Tuple 사용후 선언 및 출력방법

var country = (82,"KR","Korea")
print(country)
print(country.0,country.1,country.2)

var country1 = (dialCode1:82,isoCode1:"KR",name1:"Korea")

print(country1.dialCode1)
print(country1.isoCode1)
print(country1.name1)

let person1 = (name:"John Doe",address:"201 Main Street",age:35)
//John Doe lives at 201 Main Street and is 35 years old.
print("\(person1.name) lives at \(person1.address) and is \(person1.age) years old.")

// Type 별칭
// 기존 Type 외 사용자 Type의 별칭을 사용할 수 있음. alias
// alias 사용 예제

typealias 나이 = Int
var age:나이 = 5
print(age)

typealias person = (name:String,height:Int,marriage:Bool)

var t1 : person = ("유비",180,true)
var t2 : person = ("관우",185,true)
print(t1)
print(t2.0)
/*
 
 Tuple을 사용하여 직사각형의 넓이와 둘레를 계산하시오
 - 직사각형의 속성 : 이름, 가로, 세로, 넓이, 둘레
 - 넓이 : 가로 * 세로
 - 둘레 : (가로 + 세로) * 2
 
 */
// java의 setter, getter 같은 느낌
typealias rectangle = (name:String,width:Int,height:Int, area:Int, border:Int)

var r1 : rectangle = ("직사각형1",5,6,0,0)
r1.area = r1.width * r1.height
r1.border = (r1.width + r1.height) * 2
print(r1)


var r2 : rectangle = ("직사각형2",15,7,0,0)
r2.area = r2.width * r2.height
r2.border = (r2.width + r2.height) * 2
print(r2)

//------------
// 기본 연산자
//------------

// 할당 연산자
let a = 2

// Tuple을 이용한 할당 연산자
let (x1,x2) = (1,2)
var (x3,x4) = (3,"Kim")
print(x1,x2)
print(x3,x4)

// 사칙연산자
print(1+2)
print(3-4)
print(5*6)
print(10/3) // 정수 나눗셈 : 나눗셈의 몫
print(10%3) // 정수 나눗셈 : 나눗셈의 나머지
print(10.0/3)
print(10/3.0)
print(10/Double(3))

// 단항 음수 연산자
let one = 1
let minusOne = -one
let plusOne = -minusOne

print(one)
print(minusOne)
print(plusOne)


