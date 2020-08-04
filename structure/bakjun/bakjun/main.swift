//
//  main.swift
//  bakjun
//
//  Created by MBP2 on 2020/08/04.
//  Copyright © 2020 MBP2. All rights reserved.
//

import Foundation

//let a = readLine()
//
//if let sol = a {
//    let array = sol.split(separator: " ")
//    let num1 = String(array[0])
//    let num2 = String(array[1])
//    let sum = Int(num1)! + Int(num2)!
//    print("\(sum)")
//}
//
//let a2 = readLine()
//let b2 = readLine()
//if let first = a2 , let second = b2 {
//    let num1 = String(first)
//    let num2 = String(second)
//    let sum = Int(num1)! + Int(num2)!
//    print(sum)
//}


///10950
//let stirngFirst = """
//5
//1 1
//2 3
//3 4
//9 8
//5 2
//"""
//
//
//let numString = readLine()
//let num = Int(numString!)!
//var stringSeperateN = [String]()
//for index in 0..<num {
//    let newString = readLine()
//    stringSeperateN.append(newString!)
//}
//
//for index in 0..<num {
//    let aString = String(stringSeperateN[index])
//    let separated = aString.split(separator: " ")
//    let a = Int(separated[0])!
//    let b = Int(separated[1])!
//    print(a+b)
//}
//

///10952
//var resultArr = [Int]()
//var cont = true
//while(cont) {
//    let string = readLine()
//    let aString = string
//    let separated = aString!.split(separator: " ").map{ Int($0)! }
//
//    if separated[0] != 0 && separated[1] != 0 {
//        resultArr.append(separated[0]+separated[1])
//    } else {
//        for index in 0..<resultArr.count {
//            print(resultArr[index])
//        }
//        cont = false
//    }
//}


///10953

//var stringArray = [String]()
//var resultArray = [Int]()
//let numString = Int(readLine()!)!
//for index in 0..<numString {
//    let inputString = readLine()!
//    stringArray.append(inputString)
//}
//
//for index in 0..<numString {
//    let aString = stringArray[index]
//    let separated = aString.split(separator: ",").map{ Int($0)! }
//    resultArray.append(separated[0]+separated[1])
//}
//
//for index in 0..<numString {
//    print(resultArray[index])
//}

//11021
//var intArray = [Int]()
//
//let numOfData = Int(readLine()!)!
//
//for index in 0..<numOfData {
//    let inputString = readLine()
//    let separated = inputString!.split(separator: " ").map { Int($0)! }
//    intArray.append(separated[0]+separated[1])
//}
//
//for index in 0..<numOfData {
//    print("Case #\(index+1): \(intArray[index])")
//}


//11022
//var stringArray = [String]()
//
//let numOfInput = Int(readLine()!)!
//
//for index in 0..<numOfInput {
//    stringArray.append(readLine()!)
//}
//
//for index in 0..<numOfInput {
//    let separated = stringArray[index].split(separator: " ").map{ Int($0)! }
//    let num1 = separated[0]
//    let num2 = separated[1]
//
//    print("Case #\(index+1): \(num1) + \(num2) = \(num1+num2)")
//
//}
//

//ENDOFFILE
//11718
//while let line = readLine() { print(line) }

//그대로 출력하기 2
//11718
//while let line = readLine() { print(line) }

//숫자의 합
//11720
//
//var sum = 0
//
//let line = readLine()
//let line2 = readLine()!
//for indexValue in line2 {
//    sum += Int(String(indexValue))!
//}
//print(sum)


//열 개씩 끊어 출력하기
//11721
//let line = readLine()!
//let numOfChar = line.count / 10
//let remainChar = line.count % 10
//
//var tempString = ""
//var numOfCharCounter = 1
//var counter = 0
//for char in line {
//
//
//    tempString.append(char)
//    counter += 1
//
//    if counter == 10 {
//         print(tempString)
//         tempString = ""
//         counter = 0
//         numOfCharCounter += 1
//    }
//}
//print(tempString)


//N 찍기
//2741
//
//let line = readLine()!
//let number = Int(line)!
//
//for index in 0..<number {
//    print(index+1)
//
//}


//역기찍 N
//2742
//
//let number = Int(readLine()!)!
//
//for index in 0..<number {
//    print(number - index)
//}

//구구단
////2739
//
//let number = Int(readLine()!)!
//
//for index in 1..<10 {
//    print("\(number) * \(index) = \(number * index)")
//}


//2007년
//날짜계산
//1924
//
//let array = readLine()!.split(separator: " ").map{ Int($0)! }
//
//func monthDate(_ month:Int) -> Int{
//    switch month {
//    case 1:
//        return 0
//    case 2:
//        return 31
//    case 3:
//        return 31+28
//    case 4:
//        return 31+28+31
//    case 5:
//        return 31+28+31+30
//    case 6:
//        return 31+28+31+30+31
//    case 7:
//        return 31+28+31+30+31+30
//    case 8:
//        return 31+28+31+30+31+30+31
//    case 9:
//        return 31+28+31+30+31+30+31+31
//    case 10:
//        return 31+28+31+30+31+30+31+31+30
//    case 11:
//        return 31+28+31+30+31+30+31+31+30+31
//    case 12:
//        return 31+28+31+30+31+30+31+31+30+31+30
//    default:
//        return 0
//    }
//}
//
//func weekCalculator(_ days:Int) -> String{
//    let remained = days % 7
//
//    switch remained {
//    case 0:
//        return "SUN"
//    case 1:
//        return "MON"
//    case 2:
//        return "TUE"
//    case 3:
//        return "WED"
//    case 4:
//        return "THU"
//    case 5:
//        return "FRI"
//    case 6:
//        return "SAT"
//    default:
//        return ""
//    }
//}
//
//var monthDates = 0
//var totalDate = 0
//
//for index in 0..<array.count {
//    if index == 0 {
//        let month = array[index]
//        monthDates = monthDate(month)
//    } else if index == 1 {
//        totalDate = monthDates + array[index]
//    }
//}
//
//print(weekCalculator(totalDate))


//합
//8393
//
//var totalNumber = 0
//let number = Int(readLine()!)!
//
//for index in 1...number {
//    totalNumber += index
//}
//print(totalNumber)


//최소, 최대
//10818
//
//let numOfNum = Int(readLine()!)!
//let array = readLine()!.split(separator: " ").map{ Int($0)! }
//
//var max = array[0]
//var min = array[0]
//
//for value in array {
//    if value > max {
//        max = value
//    } else if value < min {
//        min = value
//    }
//}
//print("\(min) \(max)")

///python
//n = int(input())
//list = list(map(int, input().split()))
//min = max = list[0]
//
//for value in range(0, n, 1):
//    if min > list[value]:
//        min = list[value]
//    elif max < list[value]:
//        max = list[value]
//print(str(min) + ' ' + str(max))

//별 찍기 - 3
//2440
//
//let number = Int(readLine()!)!
//
//for i in 0..<number {
//    var starString = ""
//    var stars = number - i
//    while stars >= 1 {
//        starString.append("*")
//        stars -= 1
//    }
//    print(starString)
//}


//별 찍기 - 4
//2441
//let number = Int(readLine()!)!
//
//for i in 0..<number {
//    var starStrig = ""
//    var blanks = i
//    var stars = number - i
//    while(blanks > 0){
//        starStrig.append(" ")
//        blanks -= 1
//    }
//    while stars > 0 {
//        starStrig.append("*")
//        stars -= 1
//    }
//    print(starStrig)
//}



//별 찍기 - 5
//2442
//
//let number = Int(readLine()!)!
//
//for i in 0..<number {
//    let blank = " "
//    var returnString = ""
//    var numOfStars = i * 2 + 1
//    var numOfBlank = number - i - 1
//    while(numOfBlank > 0) {
//        returnString.append(blank)
//        numOfBlank -= 1
//    }
//
//
//    while(numOfStars > 0) {
//        returnString.append("*")
//        numOfStars -= 1
//    }
//    print(returnString)
//}

//별 찍기 - 8
//2445
//

//별 찍기 - 12
//2522
//let num = Int(readLine()!)!
//
//var string = ""
//
//for index in 1...num*2 {
//    var blank = num - index
//    var star = index
//    while (blank > 0){
//        string.append(" ")
//        blank -= 1
//    }
//    while (star > 0) {
//        string.append("*")
//        star -= 1
//    }
//    print(string)
//    string = ""
//}
//
//for index in 1...num {
//    var star = num - index
//    var blank = index
//    while (blank > 0) {
//        string.append(" ")
//        blank -= 1
//    }
//    while (star > 0) {
//        string.append("*")
//        star -= 1
//    }
//    print(string)
//    string = ""
//}
    
    
//별 찍기 - 9
//2446
//
//*********
// *******
//  *****
//   ***
//    *
//   ***
//  *****
// *******
//*********
//let number = Int(readLine()!)!
//var string = ""
//
//for index in 1...number {
//    var numOfStar = number*2-(index*2-1)
//    var numOfBlank = index - 1
//
//    while(numOfBlank > 0) {
//        string.append(" ")
//        numOfBlank -= 1
//    }
//    while(numOfStar > 0) {
//        string.append("*")
//        numOfStar -= 1
//    }
//
//    print(string)
//    string = ""
//}
//
//for index in 2...number {
//    var numOfStar = index*2-1
//    var numOfBlank = number-index
//
//    while(numOfBlank > 0) {
//        string.append(" ")
//        numOfBlank -= 1
//    }
//    while(numOfStar > 0) {
//        string.append("*")
//        numOfStar -= 1
//    }
//    print(string)
//    string = ""
//}

//별 찍기 - 16
//10991
//    *
//   * *
//  * * *
// * * * *
//* * * * *

//let number = Int(readLine()!)!
//var string = ""
//
//for index in 1...number {
//    var numOfBlank = number-index
//    var numOfStar = index
//
//    while (numOfBlank > 0) {
//        string.append(" ")
//        numOfBlank -= 1
//    }
//    while (numOfStar > 0) {
//        string.append(" *")
//        numOfStar -= 1
//    }
//    string.remove(at: string.startIndex)
//    print(string)
//    string = ""
//}
//

//별 찍기
//10992

let number = Int(readLine()!)!
var string = ""
var number2 = number
for index in 1...number {
    if index == 1{
        while(number-index > 0) {
            
            
        }
        
    }
}
