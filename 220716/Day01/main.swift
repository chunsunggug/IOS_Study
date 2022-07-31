//
//  main.swift
//  Day01
//
//  Created by TJ on 2022/07/16.
//

import Foundation
/*

화면 출력
 
 */


// 문자 출력
print("안녕하세요!")

// 숫자 출력
print(12345)

// 결합
print("hi :",1234)

// 연산

print(123+456)

print("123+456")

/*
 ------------------
 상수 또는 변수 작명 규칙
 ------------------
 - Camel Case : 낙타 표기법 소문자로 시작하여 중간 다른 단어 시작시 대문자로 시작 // Function, Method, Variable, Constant..
 ex) studentName , wooYungWoo ...
 
 - Pascal Case : Camel Case와 유사하나 대문자로 시작 // Class, Stuct, Enum, Extension
 
 ex) StudentName , Product , WooYungWoo ...
 
 - Snake Case : 뱀 표기법으로 (_) Underbar로 연결하여 사용
 
 ex) student_name, woo_yung_woo   // Variable, Constant
 
 * 대소문자 구분
 * 첫 글자를 숫자나 특수문자로 시작하면 안된다. 단 (_)underbar는 사용 가능하나 별도 용도 존재
 
*/


// 상수를 이용한 출력
let message = "안녕하세요."
//   Heap     Data(Stack)


print("message")
print(message)

/*
 
 상수(let)와 변수(var)
 
 -상수 : 한번 값이 들어가면 값에 대한 변경 불가
 
 -변수 : 한번 값이 들어가도 값에 대한 변경 가능

 -상수 선언 방법
 : Basic Method
    let <variable name> : <type> = <value>
    let message = "안녕하세요."
 : 추론 방법 <- 값이 명확한 경우
    let <variable name> = <value>
 
 -변수 선언 방법
 : Basic Method
    var <variable name> : <type> = <value>
    var message = "안녕하세요."
 : 추론 방법 <- 값이 명확한 경우
    var <variable name> = <value>
 
*/

let intLetNum1 : Int = 200
let intLetNum2 = 100

var intVarNum1 : Int = 200
var intVarNum2 = 100
// intLetNum1 = 2000 오류 발생
intVarNum1 = 2000

print(intLetNum1)
print(intLetNum2)

print(intVarNum1)
print(intVarNum2)

/*
 상수 선언 후 값 할당 방법
 - 나중에 할당하려고 하는 상수나 변수는 타입(type)을 꼭 명시해 주어야 합니다.
*/

let sum:Int
let inputA = 100
let inputB = 200
sum = inputA + inputB // sum은 상수기 때문에 값이 들어간 이후 변경 불가
print(sum)

var sum2:Int
var input2A = 200
var input2B = 300

sum2 = input2A + input2B // sum2는 변수기 때문에 값이 들어간 이후 변경 가능
sum2 = sum2 + sum2
print(sum2)

var nickName : String
// print(nickName) 값이 없는 경우 오류 발생

nickName = "유비"
nickName = "관우"
// print(nickName) 값이 있기 때문에 출력 가능
print(nickName)

var aNum = 9, bNum = 10

print(aNum, bNum)

/*
 문자열 보간법 (String Interpolation)
 : print 실행 중 문자열, 변수, 상수의 값을 쉽게 표현하기 위해 사용
 */
var studentName = "홍길동"

// 출력방법 문자열 + 문자열
print("name : " + studentName)
print("name :" , studentName )

studentName = "역슬래시 홍길동"
// 쌍따옴표 안의 (\)역슬래시 후 () 괄호 안의 값을 통해 일괄 표현 가능
print("name : \(studentName)")

// 한줄 표현을 통해 나중에 변수만 변경되면 일괄 적용시 보기가 편함
let studentName2 = "name : \(studentName)"

print(studentName2)

let myName = "천덕꾸러기"
var myAge = 30

print("저 \(myName)는 \(myAge)살 입니다.")
// 저 천덕꾸러기는 30살 입니다.

print("저의 형은 \(myAge-16)살 입니다.")
// 저의 형은 14살 입니다.

var name1 = "유비"
var age1 = 34
var gender1 = "남자"

// 회원의 이름은 유비이고 나이는 34살이며 성별은 남자입니다.
print("회원의 이름은 \(name1)이고 나이는 \(age1)살이며 성별은 \(gender1)입니다.")

// 초코파이 5개를 구매한 가격 출력
var price = 300
var cnt = 5
var total = price * cnt

print("초코파이 가격",price)
print("수량",cnt)
print("합계",total)


/*
 기본 데이터 타입
 Swift의 기본 데이터 타입
 Int, Bool, Float, Double, Character, String, UInt
 
*/

// Bool
var someBool : Bool = true;
var trueBool : Bool = true;
var falseBool : Bool = false;

// Int
var someInt : Int = -100
// someInt = 100.1 타입 상이 오류 발생
someInt = 100_000 // , 대신 _로 숫자의 통화 대체 표현 가능
someInt = 100_00_00
print(someInt)


// UInte
var someUInt : UInt = 100
// someUInt = -100 양수만 가능하기 때문에 오류 발생
// someUInt = someInt 타입 상이 오류 발생

// Float
var someFlaot : Float = 3.14
someFlaot = 3
someFlaot = 10_000.44_556
print(someFlaot)

var someDouble : Double = 3.14
someDouble = 3
someDouble = 100_000.445
// someDouble = someFlaot 타입 상이로 오류 발생
print(someDouble)

// type 확인 방법
print("Printing tpye... \(type(of: someDouble)) : \(someDouble)")

// 숫자 Type 변환
let doubleNum:Double = 4.99999
print(doubleNum)

var castToInt = Int(doubleNum)
print(castToInt)

var roundToInt : Int = Int(doubleNum.rounded())
print(roundToInt)

print("Origin :\(doubleNum), After Cast \(castToInt), After Rounded: \(roundToInt)")

let doubleNum1 = 0.1
let intNum1 = 1
print(doubleNum1 + Double(intNum1))

// Character
var someCharacter : Character = "A"
someCharacter = "가"
someCharacter = "😡"
print(someCharacter)
print(type(of: someCharacter))

// String
var someString = "하하하...웃는거 맞니 ? "
// someString = someString + "웃으면 복이와요 ? 🤔"
someString += "웃으면 복이와요 ? 🤔"
someString += "웃으면 복이와요 ? 🤔"
print(someString)


// someString = someCharacter type이 다르면 오류 발생

someString = """
"여러줄 문자열을 사용할 수 있습니다.
첫줄 과 마지막줄에 사용할 문자를 정의
하셔야 합니다."
"""
// 주의사항 시작줄과 마지막줄에는 """만 있어야 한다.
print(someString)

// 문자열과 특수문자 이전 방식 \n 다음 라인 \t 탭 \이스케이프 뒤에 입력한 글자 그대로 출력
print("\"여러줄 문자열을 사용할 수 있습니다.\n첫줄 과 마지막줄에 \t사용할 문자를 정의하셔야 합니다.\"")


/*
 노트북 정보 변수를 선언하고 대입하세요
 이름(문자열), 크기(정수), 무게(실수), 가방유무(Bool), 색상(문자)
 
 */

var name2:String
var size2:Int
var weight2:Double
var bag2:Bool
var color2:Character

name2 = "맥북프로"
size2 = 16
weight2 = 2.56
bag2 = false
color2 = "백"

print("이름:",name2,type(of:name2))
print("크기:",size2,type(of:size2))
print("무게:",weight2,type(of:weight2))
print("가방:",bag2,type(of:bag2))
print("색상:",color2,type(of:color2))

