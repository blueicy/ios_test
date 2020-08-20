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

let number = Int(readLine()!)!

var coordinate = [[Int]](repeating: Array(repeating: 0, count: 2), count: number)

for index in 0..<number {
    let aCoord = readLine()!.split(separator: " ").map{ Int($0)! }
    coordinate[index][0] = aCoord[0]
    coordinate[index][1] = aCoord[1]
}

coordinate = coordinate.sorted(by: { (left, right) -> Bool in
    if left[1] == right[1] {
        return left[0] < right[0]
    } else {
        return left[1] < right[1]
    }
} )

for index in 0..<number {
    print("\(coordinate[index][0]) \(coordinate[index][1])")
}
