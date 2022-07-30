//
//  main.swift
//  Day04
//
//  Created by TJ on 2022/07/24.
//

import Foundation


/* Optional
 -nil 값을 포함 할수도 있고, 안할수도 있다.
*/

var constanNum = 100
//constanNum = nil

let optionalConstant:Int!=nil
let optionalConstant1:Int?=nil

print(constanNum)

print(optionalConstant)
print(optionalConstant1)

var constandNum1:Int! = 300;
print(constandNum1 + 50)


constandNum1 = nil
// print(constandNum1 + 1)


/*
 Optional Unwrapping
 - Optional Binding
 - Force Unwrapping (non Check 강제로 데이터만 빼오기)
 */


// optional Binding
var myName : String? = nil
if let name = myName{
    print(name,"Nil 아님")
}else{
    print("myName is nil")
}


var myName2 : String? = "james"
var yourName2: String? = nil


if let name2 = myName2,let friend = yourName2{
    print("\(name2) and \(friend)")
}

yourName2 = "cathy"
if let name2 = myName2,let friend = yourName2{
    print("\(name2) and \(friend)")
}
print(yourName2)
print(yourName2!)

yourName2 = nil
//print(yourName2!) error - nil 언랩핑으로 데이터 없으나 optional 제거로 오류 발생


// guard 가 if else 보다 성능이 더 좋다


// ------------------
// Collection
// ------------------


/*
 
- 여러 값들을 묶어서 하나의 변수로 사용
() 튜플 [] 배열
 
1) Array(배열) : 순서가 있는 리스트 컬렉션
 
2) Dictonary : 키와 값이 쌍으로 이루어진 컬렉션
 
3) Set : 순서가 없고 중복 데이터가 없는 집합 컬렉션
 
*/

// Array
// 빈 Int Array 생성
var intVariable: Array<Int> = Array<Int>()
var intVariable1: [Int] = [Int]()
var intVariable2: [Int] = []
var intVariable3 = [1,2,3]

// <> Generic 특정 Type의 값만 담을 수 있음
print(type(of: intVariable))
print(type(of: intVariable1))
print(type(of: intVariable2))
print(type(of: intVariable3))

// Data 추가

intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
intVariable.append(1)


// 계산 및 출력
print(intVariable.count)
print(intVariable)
print(intVariable.contains(100))
print(intVariable.contains(5))
print(intVariable[0]+intVariable[1])
print(intVariable[0...2])

// 수정
intVariable[0] = 999
print(intVariable)

// 삭제 at은 인덱스
intVariable.remove(at: 0)
intVariable.removeFirst()
intVariable.removeLast()
intVariable = [] //intVariable.removeAll() 동일한 기능


print(intVariable.count)

// 기본값으로 설정된 배열 생성하기
var doubleVariable1 = [0.0,0.0,0.0,0.0,0.0]
var doubleVariable2 = Array(repeating: 0.0, count: 5)
print (type(of: doubleVariable1))
print (type(of: doubleVariable2))
var anotherFiveDouble = Array(repeating: 2.5, count: 5)
print(anotherFiveDouble)


// 배열 합치기
var tenDobules = doubleVariable1 + anotherFiveDouble
print(tenDobules)


// 배열 더하기
var fiveDoubles: [Double] = []

for i in 0..<doubleVariable1.count{
    fiveDoubles.append(doubleVariable1[i] + anotherFiveDouble[i])
}

print(fiveDoubles)


// 문자를 이용한 배열의 생성
var shoppingList : [String] = ["Eggs","Milk"]

print(shoppingList)
print(shoppingList[0])
print(shoppingList[1])

var shoppingList2 : [String] = [String](repeating: "ABC", count: 3)
print(shoppingList2)

for i in 0..<shoppingList.count{
    print(shoppingList[i])
}
        
for i in shoppingList2{
    print(i)
}

for i in ["a","b","c"] {
    print(i)
}
        
print("The Shopping List Contains \(shoppingList.count) items.")
//shoppingList = []
if shoppingList.isEmpty{
    print("The Shopping List is Empty.")
}else{
    print("The Shopping List Contains \(shoppingList.count) items.")
}

shoppingList += ["Chocolate Spread","Chese","Butter","PIE","PLUS"]

print(shoppingList)

print(shoppingList.count)

// 배열의 특정 위치 데이터 불러오기
var firstItem = shoppingList[0]
print(firstItem)

// 배열의 특정 위치 변경 및 제거 한번에 적용
shoppingList[3...5] = ["BANANA","Apple"]
print(shoppingList)

// 배열의 특정 위치 데이터 추가
shoppingList.insert("Mayple Syrup", at: 1)
print(shoppingList)

for (index,value) in shoppingList.enumerated() {
    print("Item \(index + 1) : \(value)")
}

// 배열의 합계 구하기 최대값 찾기

let arr = [12,23,45,67,89,13,25,37]
var sum = 0
for i in arr {
    sum += i
    print(i)
}
print(sum)

var max = 0

for i in arr {
    if max < i {
        max = i
    }
}
print(max)

print(arr.max()!)
