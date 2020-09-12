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
//
//let number = Int(readLine()!)!
//var string = ""
//var number2 = number
//for index in 1...number {
//    if index == 1{
//        while(number-index > 0) {
//
//
//        }
//
//    }
//}


//1로 만들기
//1463

//let number = Int(readLine()!)!
//
//var memo = [Int](repeating: 0, count: number+1)
//
//func min(_ num1:Int, _ num2:Int) -> Int {
//    if num1 <= num2 {
//        return num1
//    } else {
//        return num2
//    }
//}
//
//var index = 0
//
//while(true) {
//    if index > number {
//        break
//    }
//    if index <= 1 {
//        memo[index] = 0
//    } else {
//        var tempMin = number + 1
//        if index % 3 == 0 {
//            let tempIndex = index/3
//            tempMin = min(tempMin, memo[tempIndex])
//        }
//        if index % 2 == 0 {
//            let tempIndex = index/2
//            tempMin = min(tempMin, memo[tempIndex])
//        }
//        tempMin = min(tempMin, memo[index-1])
//        memo[index] = tempMin + 1
//    }
//    index += 1
//}
//
//print(memo[number])


//2 x n 타일링
//11726

//let number = Int(readLine()!)!
//
//var mem = [Int](repeating: 0, count: 1001)
//
//mem[1] = 1
//mem[2] = 2
//
//if number == 1 {
//    print(mem[1])
//
//}else if number == 2{
//    print(mem[2])
//} else {
//
//    for index in 3..<number+1 {
//        mem[index] = (mem[index-2] + mem[index-1])
//    }
//    print(mem[number]%10007)
//}
//2 x n 타일링
//11727

//let number = Int(readLine()!)!
//
//var mem = [Int](repeating: 0, count: 1001)
//
//mem[1] = 1
//mem[2] = 3
//
//for index in 3..<number+1 {
//        mem[index] = (mem[index-2]*2 + mem[index-1])%10007
//}
//print(mem[number]%10007)
//


//1,2,3 더하기
//9095
//let number = Int(readLine()!)!
//
//var inputArray = [Int]()
//
//for index in 0..<number {
//    inputArray.append(Int(readLine()!)!)
//}
//
//var mem = [Int](repeating: 0, count: 100)
//
//mem[1] = 1
//mem[2] = 2
//mem[3] = 4
//
//for index in 0..<number{
//    let solveNumber = inputArray[index]
//    if solveNumber == 1 {
//        print(mem[1])
//        continue
//    }else if solveNumber == 2 {
//        print(mem[2])
//        continue
//    }else if solveNumber == 3 {
//        print(mem[3])
//        continue
//    }
//    for index2 in 4...solveNumber {
//        mem[index2] = mem[index2 - 3] + mem[index2 - 2] + mem[index2 - 1]
//    }
//    print(mem[solveNumber])
//}


//쉬운 계단 수
//10844

//
//var arr = [[Int]](repeating: Array(repeating: 0, count: 10), count: 101)
//
//for index1 in 1..<101 {
//    for index2 in 0..<10{
//        if index1 == 1 {
//            arr[index1][index2] = 1
//        } else {
//            if 1 <= index2 && 8 >= index2 {
//                arr[index1][index2] = (arr[index1-1][index2-1] + arr[index1-1][index2+1]) % 100000000
//            } else if index2 == 0 {
//                arr[index1][index2] = arr[index1 - 1][index2 + 1] % 100000000
//            } else if index2 == 9 {
//                arr[index1][index2] = arr[index1 - 1][index2 - 1] % 100000000
//            }
//        }
//    }
//}
//let number = Int(readLine()!)!
//
//func sumArray(_ array:[Int]) -> Int {
//    var sum = 0
//    for index in 0..<array.count {
//        sum += array[index]
//    }
//    return sum
//}
//
//print(sumArray(arr[number]))

//오르막 수
//11057

////
//let number = Int(readLine()!)!
//
//var arr = [[Int]](repeating: Array(repeating: 0, count: 10), count: 1001)
//
//for index in 0..<10 {
//    arr[1][index] = 1
//}
//for index2 in 2..<1001 {
//    for index3 in 0..<10 {
//        for index4 in 0..<(index3+1) {
//            arr[index2][index3] += arr[index2 - 1][index4] % 10007
//        }
//    }
//}
//func sumArray(_ array:[Int]) -> Int {
//    var sum = 0
//    for index in 0..<array.count {
//        sum += array[index]
//    }
//    return sum
//}
//
//
//print(sumArray(arr[number]))


//이친수
//2193
//
//let number = Int(readLine()!)!
//
//var mem = [0,1,1]
//
//for index in 3..<91 {
//    mem.append(mem[index - 2] + mem[index - 1])
//
//}
//
//func sumArray(_ array:[Int]) -> Int {
//    var sum = 0
//    for index in 0..<array.count {
//        sum += array[index]
//    }
//    return sum
//}
//
//print(mem[number])

//스티커
//9465

//let number = Int(readLine()!)!
//
//for i in 0..<number {
//    let num = Int(readLine()!)!
//
//    var st = readLine()!.split(separator: " ").map{ Int($0)! }
//    var st2 = readLine()!.split(separator: " ").map{ Int($0)! }
//
////    for index in 0..<number {
//    //    var D = [[Int]](repeating: Array(repeating: 0, count: 3), count: maxi)
//
//
//        st[1] += st2[0]
//        st2[1] += st[0]
//
//        for index2 in 2..<num {
//            st[index2] += max(st2[index2-1], st2[index2-2])
//            st2[index2] += max(st[index2-1], st[index2-2])
////        }
//
//    }
//    print(max(st[num-1], st2[num-1]))
//}

//2156
////포도주 시식
//let number = Int(readLine()!)!
//
//var dp = [Int]()
//var sum = [Int]()
//dp.append(0)
//for _ in 0..<number {
//    dp.append(Int(readLine()!)!)
//}
//
//sum.append(0)
//sum.append(dp[1])
//
//if number > 1 {
//    sum.append(dp[1] + dp[2])
//}
//
//for index in 3...number {
//    sum.append(max(dp[index]+dp[index-1]+sum[index-3], dp[index]+sum[index-2], sum[index-1]))
//    sum[index] = max(sum[index-1],sum[index])
//}
//
//print(sum[number-1])

//11053
//가장 긴 증가하는 부분 수열

//let number = Int(readLine()!)!
//
//var mem = readLine()!.split(separator: " ").map{ Int($0)! }
//
//var dp = [Int](repeating: 0, count: number)
//
//
//if number == 1 {
//    dp[0] = 1
//} else {
//    for index in 0..<number {
//        dp[index] = 1
//        for index2 in 0..<index {
//            if mem[index2] < mem[index] {
//                dp[index] = max(dp[index], dp[index2]+1)
//            }
//        }
//    }
//}
//print(dp.max()!)

//11055
//가장 큰 증가 부분 수열

//let number = Int(readLine()!)!
//
//var mem = readLine()!.split(separator: " ").map{ Int($0)! }
//
//var dp = [Int].init(repeating: 0, count: number)
//
//var max = 0
//
//for index in 0..<number {
//    dp[index] += mem[index]
//    for index2 in 0..<index {
//        if mem[index2] < mem[index] && dp[index] < dp[index2] + mem[index] {
//            dp[index] = dp[index2] + mem[index]
//        }
//    }
//    if max < dp[index] {
//        max = dp[index]
//    }
//
//}
//
//print(max)


//연속합
//1912
//let number = Int(readLine()!)!
//let mem = readLine()!.split(separator: " ").map{ Int($0)! }
//
//var dp = mem
//
//for index in 1..<number {
//    let maxi = max(dp[index], dp[index-1] + dp[index])
//    dp[index] = maxi
//}
//
//
//print(dp.max()!)

//계단오르기
//2579
//let number = Int(readLine()!)!
//
//var stair = [Int]()
//
//for _ in 0..<number {
//    stair.append(Int(readLine()!)!)
//}
//
//var dp = [Int]()
//
//
//dp.append(stair[0])
//
//if number > 1 {
//    dp.append(stair[0] + stair[1])
//}
//if number > 2 {
//    dp.append(max(stair[1] + stair[2], stair[0] + stair[2]))
//}
//
//if number > 3 {
//    for i in 3..<number {
//        dp.append(max(dp[i-3] + stair[i-1] + stair[i], dp[i-2] + stair[i]))
//    }
//}
//print(dp[number-1])


//제곱수의 합
//1699
//
//func _1699() {
//    let number = Int(readLine()!)!
//    var dp = [Int](repeating: 0, count: 100001)
//
//    for index in 1..<number+1 {
//        dp[index] = index
//        for j in 1..<index {
//            if j*j > index {
//                break
//            }
//        dp[index] = min(dp[index], dp[index-j*j]+1)
//        }
//    }
//
//    print(dp[number])
//
//}
//
//_1699()

//타일 채우기
//2133
//fail
//func _2133() {
//    let number = Int(readLine()!)!
//
//    var dp = [Int]()
//    dp.append(0)
//
//    for index in 0...number {
//        if index % 2 != 0 {
//            dp.append(0)
//        } else {
//            if index == 0 {
//                continue
//            }
//
//            if index == 2 {
//                dp.append(3)
//            } else {
//                let number2 = index/2
//                var cal = dp[index-2]
//                for index2 in 1..<number2 {
//                    cal = cal * (dp[index-2]-index2)
//                }
//                dp.append(cal)
//            }
//
//        }
//    }
//    print(dp[number])
//}
//
//_2133()
    
//func _2133() {
//    let number = Int(readLine()!)!
//
//    var dp = [Int](repeating: 0, count: 31)
//
//    dp[2] = 3
//
//    for index in 3..<31 {
//        if index % 2 != 0 {
//            dp.append(0)
//        } else {
//            dp[index] = dp[2] * dp[index-2]
//            for index2 in stride(from: 4, to: index, by: 2) {
//                dp[index] += 2 * dp[index - index2]
//            }
//            dp[index] += 2
//        }
//    }
//
//    print(dp[number])
//}
//
//_2133()
//


//9461
//파도반수열
//
//func _9461(){
//    let number = Int(readLine()!)!
//
//    var num = [Int]()
//    for _ in 0..<number {
//        num.append(Int(readLine()!)!)
//    }
//
//    var dp = [Int]()
//
//    dp.append(0)
//    dp.append(1)
//    dp.append(1)
//    dp.append(1)
//    dp.append(2)
//    dp.append(2)
//    dp.append(3)
//    dp.append(4)
//    dp.append(5)
//    dp.append(7)
//    dp.append(9)
//
//    for index in 11..<101 {
//        let temp = dp[index - 2] + dp[index - 3]
//        dp.append(temp)
//    }
//
//    for index0 in 0..<number {
//        print(dp[num[index0]])
//    }
//}
//
//_9461()


//2225
//합분배

//func _2225() {
//    let num = readLine()!.split(separator: " ").map{ Int($0)! }
//
//    var dp = [Int](repeating: 0, count: num[0])
//    dp.insert(1, at: 0)
//
//    for _ in 1..<num[1]+1 {
//        for index in 1..<num[0]+1 {
//            dp[index] = (dp[index] + dp[index-1])%1000000000
//        }
//    }
//
//    print(dp[num[0]])
//}
//
//_2225()


//2011
//암호코드
// lastindex

//func _2011() {
//    let number = Array(readLine()!.map{ Int(String($0))! })
//    if number[0] == 0 {
//        print(0)
//    } else {
//        var res = [1,1]
//        let mod = 1000000
//
//        for index in 1..<number.count {
//            var count = 0
//            let num = number[index-1..<index+1]
//            let numb = num.first! * 10 + num.last!
//
//            if num[index] > 0 {
//                count += res[res.index(res.count, offsetBy: -1)]
//            }
//            if numb >= 10 && numb <= 26 {
//                count += res[res.index(res.count, offsetBy: -2)]
//            }
//            res.append(count % mod)
//        }
//        print(res.last!)
//    }
//}
//
//_2011()


//11052
//카드구매하기

//func _11052() {
//    let number = Int(readLine()!)!
//
//    var card = readLine()!.split(separator: " ").map{ Int($0)! }
//    card.insert(0, at: 0)
//
//    var dp = [Int].init(repeating: 0, count: number+1)
//
//    dp[1] = card[1]
//    dp[2] = max(card[2], card[1]*2)
//
//    for index1 in 3..<number+1 {
//        dp[index1] = card[index1]
//        for index2 in 1..<(index1/2) + 1 {
//            dp[index1] = max(dp[index1], dp[index2] + dp[index1-index2])
//        }
//    }
//
//    print(dp[number])
//}
//
//_11052()


//수정렬하기2
//2751
//mergeSort

func mergeSort(_ array:[Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    

    let mid = array.count / 2
    var lList = [Int]()
    var rList = [Int]()
//        mergeSort(arr: arr)
    lList += array[0..<mid]
    rList += array[mid..<array.count]
    
    var left = mergeSort(lList)
    var right = mergeSort(rList)
    
    return merge(left, right)
}

func merge(_ left:[Int],_ right:[Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedPile = [Int]()
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            orderedPile.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            orderedPile.append(right[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(left[leftIndex])
            leftIndex += 1
            orderedPile.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        orderedPile.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedPile.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedPile
}


//func _2751() {
//    let number = Int(readLine()!)!
//
//    var arr = [Int]()
//    for _ in 0..<number {
//        arr.append(Int(readLine()!)!)
//    }
//
//    arr = mergeSort(arr)
//    for index in 0..<number {
//        print(arr[index])
//    }
//}
//_2751()

//2차원 좌표정렬
//11650
//// sorted
//let number = Int(readLine()!)!
//
//var coordinate = [[Int]](repeating: Array(repeating: 0, count: 2), count: number)
//
//for index in 0..<number {
//    var aCoord = readLine()!.split(separator: " ").map{ Int($0)! }
//    coordinate[index][0] = aCoord[0]
//    coordinate[index][1] = aCoord[1]
//}
//
//coordinate = coordinate.sorted(by: { (left, right) -> Bool in
//    if left[0] == right[0] {
//        return left[1] < right[1]
//    }else {
//        return left[0] < right[0]
//    }
//
//})
//
//for index in 0..<number {
//    print("\(coordinate[index][0]) \(coordinate[index][1])")
//}

//2차원 좌표정렬
//11651
//let number = Int(readLine()!)!
//
//var coordinate = [[Int]](repeating: Array(repeating: 0, count: 2), count: number)
//
//for index in 0..<number {
//    let aCoord = readLine()!.split(separator: " ").map{ Int($0)! }
//    coordinate[index][0] = aCoord[0]
//    coordinate[index][1] = aCoord[1]
//}
//
//coordinate = coordinate.sorted(by: { (left, right) -> Bool in
//    if left[1] == right[1] {
//        return left[0] < right[0]
//    } else {
//        return left[1] < right[1]
//    }
//} )
//
//for index in 0..<number {
//    print("\(coordinate[index][0]) \(coordinate[index][1])")
//}

//나이순 정렬
//10814

//func _10814() {
//    let number = Int(readLine()!)!
//
//    var array = [(Int, String)]()
//
//    for _ in 0..<number {
//        var tempArray = readLine()!.split(separator: " ").map{ String($0) }
//        array.append((Int(tempArray[0])!, tempArray[1]))
//    }
//
//    array = array.sorted { (left, right) -> Bool in
//        return left.0 < right.0
//    }
//    for index in 0..<number {
//        print("\(array[index].0) \(array[index].1)")
//    }
//}
//
//_10814()

//import Foundation
//
//struct ReadInput {
//
//    private var currentIndex: Int = 0
//    private var inputArray: [String] = []
//
//    // 데이터를 배열로 변환
//    public mutating func readLineToArray() -> [String] {
//
//        guard let result = readLine() else {
//            return []
//        }
//
//        return result.components(separatedBy: " ")
//    }
//
//    // 띄어쓰기 단위로 String 읽기
//    public mutating func read() -> String {
//        if inputArray.count == 0 {
//            inputArray = self.readLineToArray()
//        }
//        let result = inputArray[inputArray.index(after: currentIndex-1)]
//        currentIndex += 1
//
//        if currentIndex == inputArray.count {
//            self.inputArray.removeAll()
//            self.currentIndex = 0
//        }
//
//        return result
//    }
//
//    // Int 데이터 읽기
//    public mutating func readInt() -> Int {
//        guard let result = Int(self.read()) else {
//            fatalError("Int형 데이터가 아닙니다.")
//        }
//
//        return result
//    }
//
//    // Double 데이터 읽기
//    public mutating func readDouble() -> Double {
//        guard let result = Double(self.read()) else {
//            fatalError("Double형 데이터가 아닙니다.")
//        }
//
//        return result
//    }
//}
//
//
//func _10989() {
//    let number = Int(readLine()!)!
//    var ri = ReadInput()
//
//    var array = [Int]()
//
//    for _ in 0..<number {
//        array.append(ri.readInt())
//    }
////    array = array.sorted { (left, right) -> Bool in
////        return left < right
////    }
//    array.sort()
//
//    for index in 0..<number {
//        print(array[index])
//    }
//}
//_10989()
//
//
//func _11652() {
//    let number = Int64(readLine()!)!
//
//    var dict = [Int64:Int64]();
//
//    for _ in 0..<number {
//        let temp = Int64(readLine()!)!
//        if let currnet = dict[temp] {
//            dict[temp] = currnet + 1;
//        } else {
//            dict.updateValue(1, forKey: temp)
//        }
//    }
//
//    let sorted = dict.sorted(by: { (left, right) -> Bool in
//        return left.value > right.value
//    })
//
//    var sorted2nd = sorted[0].key
//    var max = sorted[0].value
//
//    for index in 1..<sorted.count {
//        if max == sorted[index].value {
//            if sorted2nd > sorted[index].key {
//                sorted2nd = sorted[index].key
//            }
//        } else {
//            break
//        }
//
//    }
//
//    print(sorted2nd)
//
//}
//
//_11652()

//11004
//K번째 수
//퀵 셀렉션


func quick_selection(_ arr:[Int], _ kth:Int) -> Int {
    let pivot = arr[(arr.count+1)/2 - 1]
    var left = [Int]()
    var mid = [Int]()
    var right = [Int]()

    let arrCount = arr.count
    for index in 0..<arrCount {
        if arr[index] < pivot {
            left.append(arr[index])
        } else if arr[index] > pivot {
            right.append(arr[index])
        } else {
            mid.append(arr[index])
        }
    }

    let leftCount = left.count
    let midCount = mid.count

    if kth < leftCount {
        return quick_selection(left, kth)
    } else if kth < leftCount + midCount {
        return mid[0]
    } else {
        return quick_selection(right, kth - leftCount - midCount)
    }

}
//
//
//
//func _11004() {
//    let numbers = readLine()!.split(separator: " ").map{ Int($0)! }
//    let notSort = readLine()!.split(separator: " ").map{ Int($0)! }
//
////    sort = mergeSort(sort)
//    print(quick_selection(notSort, numbers[1]-1))
//
//}
//_11004()

public struct Stack<T> {
    private var elements = Array<T>()
    public init() {}
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(element: T) {
        self.elements.append(element)
    }
    
    public func peek() -> T? {
        return self.elements.last
    }
    
    public var isEmpty: Bool {
        return self.elements.isEmpty
    }
    
    public var count: Int {
        return self.elements.count
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return self.elements.description
    }
}

//func _10828() {
//    let number = Int(readLine()!)!
//    var myStack = Stack<Int>()
//    for _ in 0..<number {
//        let order = readLine()!.split(separator: " ").map( { String($0) } )
//
//        switch order[0] {
//        case "push":
//            myStack.push(element: Int(order[1])!)
//        case "pop":
//            if let number = myStack.pop(){
//                print(number)
//            } else {
//              print(-1)
//            }
//        case "size":
//            print(myStack.count)
//        case "empty":
//            if myStack.isEmpty {
//                print("1")
//            } else {
//                print("0")
//            }
//        case "top":
//            if let number = myStack.peek(){
//                print(number)
//            } else {
//                print(-1)
//            }
//        default:
//            print("ERROR")
//        }
//    }
//
//}
//
//_10828()

//func _9012(){
//    let number = Int(readLine()!)!
//
//    for _ in 0..<number {
//        let inputArray = Array(readLine()!).map{ String($0) }
//
//        var counter = 0
//        var myStack = Stack<String>()
//
//        for i in 0..<inputArray.count {
//            switch inputArray[i] {
//            case "(":
//                myStack.push(element: "(")
//                counter = counter + 1
//            case ")":
//                let temp = myStack.pop()
//                counter = counter - 1
//
//            default:
//                print("ERROR")
//            }
//        }
//
//        if myStack.isEmpty && counter == 0 {
//            print("YES")
//        }else{
//            print("NO")
//        }
//    }
//}
//
//_9012()

//
//func _10799() {
//    let inputArray = Array(readLine()!.map({ String($0)}))
//
//    var myStack = Stack<String>()
//
//    var answer = 0
//
//    for index in 0..<inputArray.count {
//        if inputArray[index] == "(" {
//            myStack.push(element: "(")
//        } else {
//            if inputArray[index-1] == "(" {
//                myStack.pop()
//                answer += myStack.count
//            } else {
//                myStack.pop()
//                answer += 1
//            }
//        }
//
//    }
//
//    print(answer)
//
//}
//
//_10799()

// 큐 구조체

public struct Queue<T> {
    internal var data = Array<T>()
    public init() {}
    
    public mutating func dequeue() -> T? {
        if data.isEmpty == false {
            return data.removeFirst()
        } else {
            return T.self as? T
        }
    }
    
    public func peek() -> T? {
        return data.first
    }
    
    public func lastPeek() -> T? {
        return data.last
    }
    
    public mutating func enqueue(element: T) {
        data.append(element)
    }
    
    public mutating func clear() {
        data.removeAll()
    }
    
    public var count: Int {
        return data.count
    }
    
    public var capacity: Int {
        get {
            return data.capacity
        }
        set {
            data.reserveCapacity(newValue)
        }
    }
    
    public func isFull() -> Bool {
        return count == data.capacity
    }
    
    public func isEmpty() -> Bool {
        return data.isEmpty
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return data.description
    }
}

//func _10845() {
//
//    let number = Int(readLine()!)!
//
//    var myQueue = Queue<Int>()
//
//    for index in 0..<number {
//        let orders = readLine()!.split(separator: " ").map{ String($0) }
//
//        switch orders[0] {
//        case "push":
//            myQueue.enqueue(element: Int(orders[1])!)
//            break
//        case "pop":
//            if let popNumber = myQueue.dequeue(){
//                print(popNumber)
//            } else {
//                print(-1)
//            }
//        case "size":
//            print(myQueue.count)
//
//        case "empty":
//            if myQueue.isEmpty(){
//                print(1)
//            } else {
//                print(0)
//            }
//        case "front":
//            if let peekNumber = myQueue.peek(){
//                print(peekNumber)
//            } else {
//                print(-1)
//            }
//        case "back":
//            if let lastPeekNumber = myQueue.lastPeek(){
//                print(lastPeekNumber)
//            } else {
//                print(-1)
//            }
//        default:
//            print("ERR")
//        }
//    }
//
//}
//
//_10845()

//덱 구조체

public struct Deque<T> {
    internal var data = Array<T>()
    
    public init() {}
    
    public mutating func pushFront(element: T) {
        return data.insert(element, at: 0)
    }
    
    public mutating func pushBack(element: T) {
        return data.append(element)
    }
    
    public mutating func popFront() -> T? {
        if data.isEmpty == false {
            return data.removeFirst()
        } else {
            return T.self as? T
        }
    }
    
    public mutating func popBack() -> T? {
        if data.isEmpty == false {
            return data.removeLast()
        } else {
            return T.self as? T
        }
    }
    
    public var count: Int {
        return data.count
    }
    
    public var isEmpty: Bool {
        return data.isEmpty
    }
    
    public func pick() -> T? {
        return data.first
    }
    
    public func lastPick() -> T? {
        return data.last
    }
}

//
//func _10866() {
//    let number = Int(readLine()!)!
//
//    var myDeque = Deque<Int>()
//
//
//    for _ in 0..<number {
//
//        let order = readLine()!.split(separator: " ").map{ String($0) }
//
//        switch order[0] {
//        case "push_front":
//            myDeque.pushFront(element: Int(order[1])!)
//        case "push_back":
//            myDeque.pushBack(element: Int(order[1])!)
//        case "pop_front":
//            if let number = myDeque.popFront() {
//                print(number)
//            } else {
//                print(-1)
//            }
//        case "pop_back":
//            if let number = myDeque.popBack() {
//                print(number)
//            } else {
//                print(-1)
//            }
//        case "size":
//            print(myDeque.count)
//        case "empty":
//            if myDeque.isEmpty {
//                print(1)
//            } else {
//                print(0)
//            }
//        case "front":
//            if let number = myDeque.pick() {
//                print(number)
//            } else {
//                print(-1)
//            }
//        case "back":
//            if let number = myDeque.lastPick() {
//                print(number)
//            } else {
//                print(-1)
//            }
//
//        default:
//            print("ERR")
//        }
//    }
//
//}
//
//_10866()

// 공백없는 string
//
//func _10808(){
//    let word = Array(readLine()!).map{ String($0) }
//
//    var wordCount = Array(repeating: 0, count: 26)
//
//    for index in 0..<word.count{
//        switch word[index] {
//        case "a":
//            wordCount[0] = wordCount[0] + 1
//        case "b":
//            wordCount[1] += 1
//        case "c":
//            wordCount[2] += 1
//        case "d":
//            wordCount[3] += 1
//        case "e":
//            wordCount[4] += 1
//        case "f":
//            wordCount[5] += 1
//        case "g":
//            wordCount[6] += 1
//        case "h":
//            wordCount[7] += 1
//        case "i":
//            wordCount[8] += 1
//        case "j":
//            wordCount[9] += 1
//        case "k":
//            wordCount[10] += 1
//        case "l":
//            wordCount[11] += 1
//        case "m":
//            wordCount[12] += 1
//        case "n":
//            wordCount[13] += 1
//        case "o":
//            wordCount[14] += 1
//        case "p":
//            wordCount[15] += 1
//        case "q":
//            wordCount[16] += 1
//        case "r":
//            wordCount[17] += 1
//        case "s":
//            wordCount[18] += 1
//        case "t":
//            wordCount[19] += 1
//        case "u":
//            wordCount[20] += 1
//        case "v":
//            wordCount[21] += 1
//        case "w":
//            wordCount[22] += 1
//        case "x":
//            wordCount[23] += 1
//        case "y":
//            wordCount[24] += 1
//        case "z":
//            wordCount[25] += 1
//        default:
//            let empty = 0
//        }
//    }
//
//    var counter = String("")
//
//    for index in 0..<wordCount.count{
//        counter.append(String(wordCount[index]))
//        if index < (wordCount.count - 1) {
//            counter.append(" ")
//        }
//    }
//
//    print(counter)
//
//}
//_10808()


//func _10809(){
//    let word = Array(readLine()!).map{ String($0) }
//
//    var wordCount = Array(repeating: -1, count: 26)
//
//    for index in 0..<word.count{
//        switch word[index] {
//        case "a":
//            if wordCount[0] == -1 {
//                wordCount[0] += index + 1
//            }
//        case "b":
//            if wordCount[1] == -1 {
//                wordCount[1] += index + 1
//            }
//        case "c":
//            if wordCount[2] == -1 {
//                wordCount[2] += index + 1
//            }
//        case "d":
//            if wordCount[3] == -1 {
//                wordCount[3] += index + 1
//            }
//        case "e":
//            if wordCount[4] == -1 {
//                wordCount[4] += index + 1
//            }
//        case "f":
//            if wordCount[5] == -1 {
//                wordCount[5] += index + 1
//            }
//        case "g":
//            if wordCount[6] == -1 {
//                wordCount[6] += index + 1
//            }
//        case "h":
//            if wordCount[7] == -1 {
//                wordCount[7] += index + 1
//            }
//        case "i":
//            if wordCount[8] == -1 {
//                wordCount[8] += index + 1
//            }
//        case "j":
//            if wordCount[9] == -1 {
//                wordCount[9] += index + 1
//            }
//        case "k":
//            if wordCount[10] == -1 {
//                wordCount[10] += index + 1
//            }
//        case "l":
//            if wordCount[11] == -1 {
//                wordCount[11] += index + 1
//            }
//        case "m":
//            if wordCount[12] == -1 {
//                wordCount[12] += index + 1
//            }
//        case "n":
//            if wordCount[13] == -1 {
//                wordCount[13] += index + 1
//            }
//        case "o":
//            if wordCount[14] == -1 {
//                wordCount[14] += index + 1
//            }
//        case "p":
//            if wordCount[15] == -1 {
//                wordCount[15] += index + 1
//            }
//        case "q":
//            if wordCount[16] == -1 {
//                wordCount[16] += index + 1
//            }
//        case "r":
//            if wordCount[17] == -1 {
//                wordCount[17] += index + 1
//            }
//        case "s":
//            if wordCount[18] == -1 {
//                wordCount[18] += index + 1
//            }
//        case "t":
//            if wordCount[19] == -1 {
//                wordCount[19] += index + 1
//            }
//        case "u":
//            if wordCount[20] == -1 {
//                wordCount[20] += index + 1
//            }
//        case "v":
//            if wordCount[21] == -1 {
//                wordCount[21] += index + 1
//            }
//        case "w":
//            if wordCount[22] == -1 {
//                wordCount[22] += index + 1
//            }
//        case "x":
//            if wordCount[23] == -1 {
//                wordCount[23] += index + 1
//            }
//        case "y":
//            if wordCount[24] == -1 {
//                wordCount[24] += index + 1
//            }
//        case "z":
//            if wordCount[25] == -1 {
//                wordCount[25] += index + 1
//            }
//        default:
//            let empty = 0
//        }
//    }
//
//    var counter = String("")
//
//    for index in 0..<wordCount.count{
//        counter.append(String(wordCount[index]))
//        if index < (wordCount.count - 1) {
//            counter.append(" ")
//        }
//    }
//
//    print(counter)
//
//}
//_10809()

//정규표현식
extension String{
    func getArrayAfterRegex(regex: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: self,
                                        range: NSRange(self.startIndex..., in: self))
            return results.map {
                String(self[Range($0.range, in: self)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
}


//func _10820() {
//
//    let letter = Array(readLine()!).map{ String($0) }
//
//    var number = 0
//    var upperCast = 0
//    var lowerCast = 0
//    var space = 0
//
//    for index in 0..<letter.count {
//        number += letter[index].getArrayAfterRegex(regex:"^[0-9]").count
//        upperCast += letter[index].getArrayAfterRegex(regex: "^[A-Z]").count
//        lowerCast += letter[index].getArrayAfterRegex(regex: "^[a-z]").count
//        space += letter[index].getArrayAfterRegex(regex: "( )").count
//    }
//    print("\(lowerCast) \(upperCast) \(number) \(space)")
//
//}
//
//_10820()
//import Foundation
//
//func solution(_ new_id:String) -> String {
//    var convertId = new_id.lowercased()
////    var arrayString = convertId.getArrayAfterRegex(regex: "(^[a-z0-9]|-|_|.)")
//    var arrayString = convertId.getArrayAfterRegex(regex: "[^:'?/><~`!@#$%^&*+()=]")
//    for index in 1..<arrayString.count {
//        if arrayString[index-1] == "." && arrayString[index] == "." {
//            arrayString[index-1] = " "
//        }
//    }
//
//    if arrayString[0] == "." {
//        arrayString[0] = " "
//    }
//
//    convertId = ""
//
//    for index in 0..<arrayString.count {
//        if arrayString[index] == " " {
//            arrayString[index] = ""
//        }
//        convertId.append(arrayString[index])
//    }
//
//    if convertId.hasPrefix("."){
//        convertId.remove(at: convertId.startIndex)
//    }
//    if convertId.hasSuffix("."){
//        convertId.popLast()
//    }
//
//    arrayString = convertId.getArrayAfterRegex(regex: "[^:'?/><~`!@#$%^&*()=]")
//
//    convertId = ""
//
//    if arrayString.count == 0 {
//        arrayString.append("a")
//    }
//
//
//    if arrayString.count > 15 {
//        for index in 0..<15 {
//            convertId.append(arrayString[index])
//        }
//    } else if arrayString.count == 2{
//        convertId.append(arrayString[0])
//        convertId.append(arrayString[1])
//        convertId.append(arrayString[1])
//    } else if arrayString.count == 1 {
//        for _ in 0..<3 {
//            convertId.append(arrayString[0])
//        }
//    } else {
//        for index in 0..<arrayString.count {
//            convertId.append(arrayString[index])
//        }
//    }
//
//    if convertId.hasSuffix("."){
//        convertId.popLast()
//    }
//
//    return convertId
//}
//
//solution(String(readLine()!))

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    
    var dint = Dictionary[String:Int]()
    
    for index1 in 0..<orders.count {
        for index2 in index1+1..<orders.count {
            let temp1 = Array(orders[index1])
            let temp2 = Array(orders[index2])
            
            var tempSet1 = Set.init(temp1)
            var tempSet2 = Set.init(temp2)
            
    
            let intersection = tempSet1.intersection(tempSet2)
            if intersection.count > 1 {
                print(intersection)
            }
            for index3 in 0..<course.count {
                if intersection.count == course[index3] {
                    var intersectionString = intersection.reduce(" ", {$0+$1})
                    dint.append
                }
            }
        }
        
    }
    
    
    
    
    return []
}

 
solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4])
