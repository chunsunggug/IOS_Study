//
//  main.swift
//  Day08
//
//  Created by TJ on 2022/08/07.
//

import Foundation

// Extension 확장
// : 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있는 기능입니다.

// Int 타입에 Extension 기능 추가하기

extension Int {
    var isEven : Bool {
        return self % 2 == 0
    }
    
    var isOdd : Bool {
        return self % 2 == 1
    }
}


print(1.isEven)
print(2.isEven)

var number : Int = 3
print(number.isEven)

// 클로저 (Closure) 자바의 Lamda와 유사 익명 함수
// : 익명함수
// 함수

func sumFunction(a:Int,b:Int) -> Int {
    return a+b
}

var sumResult : Int = sumFunction(a: 10, b: 20)
print(sumResult)

// Closure

var sumClosure : (Int,Int) -> Int = {(a:Int,b:Int) -> Int in return a + b }

sumResult = sumClosure(10 , 20)
print(sumResult)
