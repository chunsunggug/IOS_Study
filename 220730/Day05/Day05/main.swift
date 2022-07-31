//
//  main.swift
//  Day05
//
//  Created by TJ on 2022/07/30.
//

import Foundation

// Dictionary
// Key : Value - Pair Collection
// Key is String Type, Value is Int Type Dictionray create

//var scoreDictionary : Dictionary<String,Int> = [String:Int]()
//var scoreDictionary : [String:Int] = [:]

// 자주 사용하는 형태
var scoreDictionary : [String:Any] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80

scoreDictionary["제갈량"] = ""
scoreDictionary["마초"] = 50


print(scoreDictionary)

print(scoreDictionary["제갈량"]!)

var airports : [String: String] = ["YYZ":"Toronto Pearson","DUB":"Dublin"]
print(airports.count,airports)

if airports.isEmpty{
    print("The airports dictionary is empty")
}else{
    print("The airports dictionary is not empty")
}


airports["LHR"] = "London"
print(airports.count,airports)

airports["LHR"] = "LONDON"
print(airports.count,airports)

// Set
// Set은 집합연산에 꽤 유용합니다.
// 중복값은 처리하지 않습니다.

var oddDigits : Set = [1,3,5,7,9]
var evenDigits : Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]


print(oddDigits)
//print(evenDigits)
//print(singleDigitPrimeNumbers)


oddDigits.insert(1)
print(oddDigits.sorted()) // 중복 값을 반영하지 않습니다.

// 합집합
print(oddDigits.union(evenDigits).sorted())

// 교집합
print(oddDigits.intersection(evenDigits).sorted())

// 차집합
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())


// 여집합
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
// -------

let houseAnimals: Set = ["dog","cat"]
let farmAnimals : Set = ["cow","chicken","sheep","dog","cat"]
let cityAnimals : Set = ["duck","rabbit"]
// 부분 집합 여부
print(houseAnimals.isSubset(of: farmAnimals))
// 상위 집합 여부
print(farmAnimals.isSuperset(of: houseAnimals))
// 집합의 연결 값 존재 여부
print(farmAnimals.isDisjoint(with: cityAnimals))

/*
열거형 (Enumerate)
 - 연관된 항목들을 묶어서 표현할 수 있는 타입
 - 배열, 딕셔너리, 셋과는 다르게 프로그래머가 정의해준 항목 값외에는 추가, 수정이 불가
 - 분석에서 사용하는 용어인 범주 (category)와 동일한 의미
 */

enum School : String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case colleage = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

//let highestEducation : School = .university
let highestEducation = School.university.rawValue

print(type(of: highestEducation))
print("저의 최종학력은 \(highestEducation) 졸업입니다.")

// ------------------------------- //
// 조건문
// ------------------------------- //

// IF 조건문

let someInteger = 1000

if someInteger == 100 {
    print("100점")
}

if someInteger == 100 {
    print("100점")
} else {
    print("100점 아님")
}

if someInteger < 100 {
    print("100점 미만")
}else if someInteger > 100 {
    print("100점 초과")
} else{
    print("100점")
}


// Tuple

var isCar = true
var isNew = true

if isCar,isNew { // == isCar && isNew ( IF AND Conditional )
    print("New Car")
}

isNew = false

if isCar == true,isNew == true{
    print("New Car")
}else{
    print("Old Car")
}

// Switch 조건문
// 범위 연산자를 활용하여 더욱 쉽고 유용하게 사용 가능.

// Before using switch statment
let personAge = 14

if personAge < 1 {
    print("baby")
}else if personAge < 3 {
    print("toddler")
}else if personAge < 5 {
    print("preschooler")
}else if personAge < 13 {
    print("gradeschoolder")
}else if personAge < 18 {
    print("teen")
}else {
    print("adult")
}

// After using switch statment
switch personAge {
case 0..<1: print("baby")
case 1..<3: print("toddler")
case 3..<5: print("preschooler")
case 5..<13: print("gradeschoolder")
case 13..<18: print("teen")
default: print("adult")
}

// --------
let someCharacter : Character = "Z"
switch someCharacter {
case "a" : print("The first letter of the alphabet")
case "z" : print("The last letter of the alphabet")
default : print("Some other character")
}

print(someInteger)

switch someInteger {
case 0: print("zero")
case 1..<100: print("1 - 99")
case 100: print("100")
case 101...Int.max: print("over 100")
default: print("unknown")
}
print(Int.max)

switch someCharacter {
case "z","Z": print("The letter Z")
default: print("Not the letter z")
}

// tuple로 사용하기
let somePoint = (4,1)
switch somePoint {
case (0,0) :
    print("\(somePoint) is at the origin")
case (_,0) : //_ 는 범위에서 아무거나
    print("\(somePoint) is on the x-axis")
case (0,_) :
    print("\(somePoint) is on the y-axis")
case (-2...2,-2...2):
    print("\(somePoint) is inside of the box.")
default :
    print("\(somePoint) is outside of the box.")
}

/*
 직급별 월급을 계산하세요
 - 부장 : 50% , 과장 : 30% , 대리 : 20%
 - 월급 : 기본급 + 기본급 * 보너스
*/

let pos = "과장"
let basic = 300
var bonus : Double

switch pos {
case "부장": bonus = Double(basic) * 1.5
case "과장": bonus = Double(basic) * 1.3
case "대리": bonus = Double(basic) * 1.2
default : bonus = Double(basic)
}
print("\(pos) \(basic) \ntotal : \(Int(bonus)) ")

//과장 300 : ___ 원



//let 과장월급 = 300
//print(과장월급)

//이름, 국어, 영어, 수학에 대한 총점과 평균 그리고 등급을 출력

/*
 이름 : 유비
 국어 : 91
 영어 : 97
 수학 : 95
 총점 : __
 평균 : __
 
 점수 등급은 수 입니다.
 
*/


let name = "유비"
let kor = 90
let eng = 90
let mat = 95
let sum = kor + eng + mat
let avg = Double(kor + eng + mat) / 3
print(avg)
var grade = ""
//if avg >= 90{
//    grade = "수"
//} else if avg >= 80{
//    grade = "우"
//} else if avg >= 70{
//    grade = "미"
//} else if avg >= 60{
//    grade = "양"
//} else{
//    grade = "가"
//}


//switch avg {
//case 100 : grade = "S"
//case 90..<100 : grade = "A"
//case 80..<90 : grade = "B"
//case 70..<80 : grade = "C"
//case 60..<70 : grade = "D"
//default : grade = "F"
//}

// 삼항 연산자
grade = avg >= 90 ? "수" :
        avg >= 80 ? "우" :
        avg >= 70 ? "미" :
        avg >= 60 ? "양" : "가"

// 배열과 반복문
var score = [ 90, 80, 70,  60,  0 ]
var level = ["수","우","미","양","가"]

for i in 0..<score.count {
    print(score[i],level[i])
    if avg >= Double(score[i]){
        grade = level[i]
        break
    }
}
 
print()
print("""
이름 : \(name)
국어 : \(kor)
영어 : \(eng)
수학 : \(mat)
총점 : \(sum)
평균 : \(avg)

점수는 \(grade)등급 입니다.
""")

//Scope

var a = 1000
var b = 2000
var c: Int
var bo = false

print("main 1:",a,b,bo)

if bo{
    let aa = 111
    b += 1
    c = 99
    
    print("if 1:",a,aa,b,c)
}else{
//    print("else1",a,aa)
    let aa = 5678
    print("else 1:",a,aa)
    a += 10
    print("else 2:",a)
    c = 77
}

enum School2 {
    case primary, elementary, middle, high, colleage, university, graduate
}

let 최종학력: School2 = .university

switch 최종학력{
case .primary :
    print("최종학력은 유치원입니다.")
case .elementary :
    print("최종학력은 초등학교입니다.")
case .middle :
    print("최종학력은 중학교입니다.")
case .high :
    print("최종학력은 고등학교입니다.")
case .colleage,.university :
    print("최종학력은 대학(교)입니다.")
case .graduate :
    print("최종학력은 대학원입니다.")
    
}

// 반복문
// For-In 문 (For-In Loops)
let names = ["Anna","Alex","Brian","Jack"]
print(names[0])

for name in names{
    print("hello, \(name)... !")
}

for (index,text) in names.enumerated(){
    print("The name at index \(index) is \(text)")
}


let numberOfLegs : [String : Int] = ["spider":8,"ant":6,"cat":4]

for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}


for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let seq = 1...5
for index in seq {
    print("\(index) times 5 is \(index * 5)")
}
for index in seq.reversed() {
    print("\(index) times 5 is \(index * 5)")
}

let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: minuteInterval){
    print(tickMark)
}

for tickMark in stride(from: minutes, through: 0, by: -5){
    print(tickMark)
}

let strings = ["First String","Second String","Third String","Fourth String"]
print("----------특정 단어 검색1----------")
for string in strings {
    if string.starts(with: "F"){
        print(string)
    }
}

print("----------특정 단어 검색2 Swift 형태----------")
// Swift 형태 StructureQueryLanguage 유사
for string in strings where string.starts(with: "F") {
    print(string)
}

print("----------break----------")
// break
for string in strings {
    if string.starts(with: "Fo"){
        break
    }
    print(string)
}
print("----------continue----------")
//continue
for string in strings {
    if string.starts(with: "F"){
        continue //다시 반복 시켜라
    }
    print(string)
}

print("-------------Array Continue------------")
var intArray:[Int] = []
for i in 1...100 {
    if i % 2 == 1{
        continue
    }
    intArray.append(i)
}
print(intArray)

//while
print("-------------While------------")
var startIndex = 1
var endIndex = 100
var sumWhile = 0

//while startIndex <= endIndex {
//    print(startIndex-1)
//    sumWhile += startIndex
//    startIndex += 2
//}

//while startIndex <= endIndex {
//    if startIndex % 2 == 0 {
//        sumWhile += startIndex
//    }
//    startIndex += 1
//}

var i1 = 2
var tot1 = 0
while i1 <= 100{
    tot1 += i1
    i1 += 2
}

print(tot1)
tot1 = 0
i1 = 0

while true {
    tot1 += i1
    i1 += 2
    if i1 > 100 {
        break
    }
}

print("even result : \(tot1)")
