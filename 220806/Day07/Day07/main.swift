//
//  main.swift
//  Day07
//
//  Created by TJ on 2022/08/06.
//

import Foundation

// 구조체
// 구조체는 Swift에서 Type을 정의한다.

// Code 집합 -> Function
// Function 집합 -> Class or Structure (대문자 시작)
struct Sample {
 var samplePrototpye = 10 //가변 프로퍼티
 let fixedSamplePrototype = 100 // 불편 프로퍼티 = 상수
 static var typeProperty = 1000 // 전역으로 메모리 공유 인스턴스 생성 없이 사용하며, 페이지 전환시에도 데이터 공유 유지
    
    func instanceMethod(){
        print("instance method")
    }
    
    static func typeMethod (){
        print("type method")
    }
}

// 구조체 사용
var samp : Sample = Sample()
//var samp = Sample() 위와 동일

print(samp.samplePrototpye)
samp.samplePrototpye = 100
print(samp)

var samp1 = Sample()

Sample.typeProperty = 1

print(Sample.typeProperty)
samp1.instanceMethod()

Sample.typeMethod()

// 학생 구조체
struct Student {
    var name = "unknown"
    var `class` = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce(){
//        print("저는 \(`class`)반 \(name) 입니다.")
        print("저는 \(self.class)반 \(name) 입니다.")
    }
}

Student.selfIntroduce()

var student = Student()
student.name = "James"
student.class = "스위프트"

student.selfIntroduce()


var cathy = Student()
student.name = "Cathy"
cathy.selfIntroduce()

// Class

class SampleC {
    var samplePrototpye = 10 //가변 프로퍼티
    let fixedSamplePrototype = 100 // 불편 프로퍼티 = 상수
    static var typeProperty = 1000 // 전역으로 메모리 공유 인스턴스 생성 없이 사용하며, 페이지 전환시에도 데이터 공유 유지
       
       func instanceMethod(){
           print("instance method")
       }
       
       static func typeMethod (){
           print("type method")
       }
}

var sampc = SampleC()
sampc.samplePrototpye = 100
print(sampc.samplePrototpye)


class StudentC{
    var name = "unknown"
    var `class` = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce(){
//        print("저는 \(`class`)반 \(name) 입니다.")
        print("저는 \(self.class)반 \(name) 입니다.")
    }
}

let james = StudentC()
james.name = "James"
james.selfIntroduce()

//클래스와 구조체

// : 프로그램의 코드를 조직화하기 위해 일반적으로 사용


struct Resolution {
    var width = 0
    var height = 0
}

class VidioMode {
    var resoulution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


var someResolution : Resolution = Resolution()
let someVidioMode =  VidioMode()

print("The width of someVidoMode is \(someVidioMode.resoulution.width)")

someResolution.width = 1920
someVidioMode.resoulution.width = 1920
print("The width of someVidoMode is \(someVidioMode.resoulution.width)")


let vga = Resolution(width:640,height: 480)
var cinema = vga
print("cinema is now \(cinema.width) pixels wide")

class Exam {
    var name = ""
    var score : [Int] = []
    var tot = 0 , avg = 0
    //var avg = 0
    
    func input(_ nn:String ,_ jj:Int...){
        name = nn
        score = jj
        calc()
        result()
    }
    
    func calc(){
        tot = 0
        for i in score{
            tot += i
        }
        avg =  tot / score.count
        
    }
    
    func result(){
        print(name,score,tot,avg)
    }
}

let st1 : Exam = Exam()
let st2 : Exam = Exam()
let st3 : Exam = Exam()
let st4 : Exam = Exam()

st1.input("유비", 77,78,71)
st2.input("관우", 90,80,65,43)
st3.input("장비", 97,98)
st4.input("조조", 67,68,69)

class Shape {
    var kind = ""
    var area = 0.0
    var border = 0.0
    
    func input(_ r:Double){
        kind = "원"
        let PI = 3.14
        area = r * r * PI
        border = 2 * r * PI
        result()
    }
    func input(_ w:Double,_ h:Double){
        kind = "직사각형"
        area = w * h
        border = (w + h) * 2
        result()
    }
    func input(_ w:Double,_ h:Double,_ l:Double){
        kind = "직각삼각형"
        area = w * h / 2
        border = w + h + l
        result()
    }
    func result(){
        print("\(kind) : \(Int(area)),\(Int(border))")
    }
}

var sh1 = Shape() // 원
var sh2 = Shape() // 직사각형
var sh3 = Shape() // 직각 삼각형

sh1.input(5)
sh2.input(5,6)
sh3.input(3,4,5)

// class 생성자

class Shape1 {
    var kind = ""
    var area = 0.0
    var border = 0.0
    let PI = 3.14

    init(){ // 생성자 생성 init
        print("생성자 no parameter")
    }
    
    init(_ radius : Double){ // 생성자 생성 init
        print("생성자 1 parameter")
        area = radius * radius * PI
        result()
    }
    
    init(_ w:Double,_ h:Double){
        print("생성자 2 parameter")
        kind = "직사각형"
        area = w * h
        border = (w + h) * 2
        result()
    }
    init(_ w:Double,_ h:Double,_ l:Double){
        print("생성자 3 parameter")
        kind = "직각삼각형"
        area = w * h / 2
        border = w + h + l
        result()
    }
    
    func Shape1(_ r:Double ){
        area = r * r * PI
        result()
    }
    
    func input(_ r:Double ){
        area = r * r * PI
        result()
    }
    func result(){
        print("원의 면적은 \(Int(area)) 입니다.")
    }
}

var sh5 = Shape1()
var sh6 = Shape1(5)
var sh7 = Shape1(5,6)
var sh8 = Shape1(3,4,5)
