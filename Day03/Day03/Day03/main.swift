//
//  main.swift
//  Day03
//
//  Created by TJ on 2022/07/23.
//

import Foundation

// 비교 연산자

print( 1 == 1 )

print( 1 == 2 )

print( 2 > 1 )

print( 2 < 1 )

print( 1 >= 1 )

print( 1 >= 1 )

print( 2 <= 1 )


let name = "world!"

if name == "world" {
    print("Hello,\(name)")
}else{
    print("I'm Sorry,\(name), but I don't recongize you.")
}
name == "world" ? print(true) : print(false)

// tuple로 비교 시에는 담겨있는 첫번째부터 첫번째로 비교 불가(서로 같은 값인 경우) 시 두번째 값으로 비교
print("1",(1,"zebra") < (2,"apple"))
print("2",(3,"apple") <= (3,"bird"))
print("3",(4,"dog") == (4,"aog"))
print("4",("dog",-1) < ("purple",-3))

print("5",true == false)

// bool 타입은 같다 같지않다 비교만 가능 크다 작다 비교는 불가
//print("6",true < false)

// 일반 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeigth: Int // 상수로 값은 한번만 들어갈 수 있음.

if hasHeader {
    rowHeigth = contentHeight + 50
}else{
    rowHeigth = contentHeight + 20
}

print(rowHeigth)

// 홀짝 판별
let num = 10

if num % 2 == 0 {
    print("짝수 입니다.")
}else{
    print("홀수 입니다.")
}

// 삼항 조건 연산자

let contentWidth = 40
let hasBody = false
let rowWidth: Int // 상수로 값은 한번만 들어갈 수 있음.

rowWidth = hasBody ? contentWidth + 40 : contentWidth + 20
print(rowWidth)

// Nil 병합 연산자
let defaultColorName = "RED"
var userDefinedColorName : String? // optional 변수 선언 기본 값 nil ( null )
print(userDefinedColorName)
var colorNameToUse = userDefinedColorName ?? defaultColorName
// ?? nil check로 만약 userDefinedColorName 값이 nil이라면 defaultColorName을 colorNameToUse로 사용한다.
print(colorNameToUse)

// 범위 연산자 StartValue...EndValue , 반복문 for i in range{}
print(1...10)
var sum = 0
for i in 1...9 {
    print("\(5) * \(i) = \(5*i)")
}

//print( sum )


for i in 1..<10 { //1 ~ 10보다 작을 때 까지 ..<
    print("\(5) * \(i) = \(5*i)")
}

// [] 배열 () 튜플
let names = ["Anna","Alex","Brian","Jack"]

// 배열 크기 확인 count
let count = names.count
print(count)

for i in 0...3 {
    print(names[i])
}

// 반 닫힌 범위 연산자
for i in 0..<count {
    print("\(i+1).Person \(names[i])")
}

for i in names {
    print(i)
}


// 논리 연산자
// 논리 부정 연산자

let allowedEntry = false
if !allowedEntry{
    print("Access Denied")
}

// 논리 곱 연산자
var entredDoorCode = true
var passedRetinaScan = false

if entredDoorCode && passedRetinaScan {
    print("Welcome!")
}else{
    print("Access Denied")
}


// 논리 합 연산자

if entredDoorCode || passedRetinaScan {
    print("Welcome!")
}else{
    print("Access Denied")
}
