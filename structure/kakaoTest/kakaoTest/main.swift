//
//  main.swift
//  kakaoTest
//
//  Created by MBP2 on 2020/09/12.
//  Copyright © 2020 MBP2. All rights reserved.
//

import Foundation

//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    var dic2 = [String : Int]()
//    var result = [String]()
//
//
//    for index1 in 0..<orders.count {
//        for index2 in index1+1..<orders.count {
//            let temp1 = Array(orders[index1])
//            let temp2 = Array(orders[index2])
//
//            var tempSet1 = Set.init(temp1)
//            var tempSet2 = Set.init(temp2)
//
//
//            let intersection = tempSet1.intersection(tempSet2)
//            if intersection.count > 1 {
////                print(intersection)
//            }
//            for index3 in 0..<course.count {
//                var intersectionString = ""
//                if intersection.count == course[index3] {
//                    intersectionString = intersection.reduce("", {String($0)+String($1)})
//                    intersectionString = String(intersectionString.sorted(by: { (left, right) -> Bool in
//                        return left < right
//                    }))
//
//                }
////                print(intersectionString)
//                dic2.updateValue(0, forKey: intersectionString)
//            }
//        }
//
//    }
//
//    dic2.removeValue(forKey: "")
//    let dictFinal = dic2.sorted { (left, right) -> Bool in
//        left.key < right.key
//    }
//
//    for (key,value) in dictFinal {
//        result.append(key)
//    }
//
//    return result
//}
//
//
//solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2,3,5])


import Foundation

enum Language: String {
    case cpp = "cpp"
    case java = "java"
    case python = "python"
}

enum End: String {
    case backend = "backend"
    case frontend = "frontend"
}

enum Level: String {
    case junior = "junior"
    case senior = "senior"
}

enum SoulFood: String {
    case chicken = "chicken"
    case pizza = "pizza"
}

struct Person {
    let lang: Language
    let end: End
    let level: Level
    let soulFood: SoulFood
    let score: Int
}


func solution(_ info:[String], _ query:[String]) -> [Int] {
    
    var newInfo = [Person]()
    for index in 0..<info.count {
        let tempInfo = info[index].split(separator: " ").map{ String($0) }
        
        let aPerson = Person.init(lang: Language(rawValue: tempInfo[0])!, end: End(rawValue: tempInfo[1])!, level: Level(rawValue: tempInfo[2])!, soulFood: SoulFood(rawValue: tempInfo[3])!, score: Int(tempInfo[4])!)

        newInfo.append(aPerson)
    }
    
    var resultArray = [Int](repeating: 0, count: query.count)
    
    for index1 in 0..<query.count {
        var tempQuery = query[index1].components(separatedBy: " and ").map{ String($0) }
        tempQuery.append(contentsOf :tempQuery[3].split(separator: " ").map{ String($0) })
        tempQuery.remove(at: 3)
        
        for index2 in 0..<newInfo.count {
            if (Int(tempQuery[4])! <= newInfo[index2].score || tempQuery[4].contains("-")) && (tempQuery[3] == newInfo[index2].soulFood.rawValue || tempQuery[3].contains("-")) && (tempQuery[2] == newInfo[index2].level.rawValue || tempQuery[2].contains("-")) && (tempQuery[1] == newInfo[index2].end.rawValue || tempQuery[1].contains("-")) && (tempQuery[0] == newInfo[index2].lang.rawValue || tempQuery[0].contains("-")){
                                resultArray[index1] += 1
            }
//            if tempQuery[0].contains("-") && tempQuery[1].contains("-") && tempQuery[2].contains("-") && tempQuery[3].contains("-") && tempQuery[4].contains("-") {
//                resultArray[index1] += 1
//            } else if tempQuery[0].contains("-") && tempQuery[1].contains("-") && tempQuery[2].contains("-") && tempQuery[3].contains("-") {
//                if Int(tempQuery[4])! <= newInfo[index2].score {
//                    resultArray[index1] += 1
//                }
//            } else if tempQuery[0].contains("-") && tempQuery[1].contains("-") && tempQuery[2].contains("-") && tempQuery[4].contains("-"){
//                if tempQuery[3] == newInfo[index2].soulFood.rawValue {
//                    resultArray[index1] += 1
//                }
//
//            } else if tempQuery[0].contains("-") && tempQuery[1].contains("-") && tempQuery[3].contains("-") && tempQuery[4].contains("-") {
//                if tempQuery[2] == newInfo[index2].level.rawValue {
//                    resultArray[index1] += 1
//                }
//
//            } else if tempQuery[0].contains("-") && tempQuery[2].contains("-") && tempQuery[3].contains("-") && tempQuery[4].contains("-") {
//                if tempQuery[3] == newInfo[index2].soulFood.rawValue {
//                    resultArray[index1] += 1
//                }
//
//            } else if tempQuery[1].contains("-") && tempQuery[2].contains("-") && tempQuery[3].contains("-") && tempQuery[4].contains("-") {
//                if tempQuery[0] == newInfo[index2].lang.rawValue {
//                    resultArray[index1] += 1
//                }
//
//
//            } else if tempQuery[0].contains("-") && tempQuery[1].contains("-") && tempQuery[2].contains("-") {
//                if Int(tempQuery[4])! <= newInfo[index2].score && tempQuery[3] == newInfo[index2].soulFood.rawValue {
//                    resultArray[index1] += 1
//                }
//            } else if tempQuery[0].contains("-") && tempQuery[1].contains("-") && tempQuery[3].contains("-"){
//                if Int(tempQuery[4])! <= newInfo[index2].score && tempQuery[2] == newInfo[index2].level.rawValue {
//                    resultArray[index1] += 1
//                }
//
//            } else if tempQuery[0].contains("-") && tempQuery[1].contains("-") {
//                if Int(tempQuery[4])! <= newInfo[index2].score && tempQuery[3] == newInfo[index2].soulFood.rawValue && tempQuery[2] == newInfo[index2].level.rawValue {
//                    resultArray[index1] += 1
//                }
//            } else if tempQuery[0].contains("-") {
//                if (Int(tempQuery[4])! <= newInfo[index2].score || tempQuery[4].contains("-")) && ( tempQuery[3] == newInfo[index2].soulFood.rawValue || tempQuery[3].contains("-")) && (tempQuery[2] == newInfo[index2].level.rawValue || tempQuery[2].contains("-") ) && (tempQuery[1] == newInfo[index2].end.rawValue || tempQuery[1].contains("-") ){
//                    resultArray[index1] += 1
//                }
//            } else if tempQuery[1].contains("-") {
//                if (Int(tempQuery[4])! <= newInfo[index2].score || tempQuery[4].contains("-")) && ( tempQuery[3] == newInfo[index2].soulFood.rawValue || tempQuery[3].contains("-")) && (tempQuery[2] == newInfo[index2].level.rawValue || tempQuery[2].contains("-") ) && (tempQuery[0] == newInfo[index2].lang.rawValue || tempQuery[0].contains("-") ){
//                    resultArray[index1] += 1
//                }
//            } else if tempQuery[2].contains("-") {
//                if (Int(tempQuery[4])! <= newInfo[index2].score || tempQuery[4].contains("-")) && ( tempQuery[3] == newInfo[index2].soulFood.rawValue || tempQuery[3].contains("-")) && (tempQuery[2] == newInfo[index2].level.rawValue || tempQuery[2].contains("-") ) && (tempQuery[0] == newInfo[index2].lang.rawValue || tempQuery[0].contains("-") ){
//                    resultArray[index1] += 1
//                }
//            } else if tempQuery[3].contains("-") {
//                if Int(tempQuery[4])! <= newInfo[index2].score && tempQuery[2] == newInfo[index2].level.rawValue && tempQuery[1] == newInfo[index2].end.rawValue && tempQuery[0] == newInfo[index2].lang.rawValue{
//                    resultArray[index1] += 1
//                }
//            } else if tempQuery[4].contains("-") {
//                if tempQuery[3] == newInfo[index2].soulFood.rawValue && tempQuery[2] == newInfo[index2].level.rawValue && tempQuery[1] == newInfo[index2].end.rawValue && tempQuery[0] == newInfo[index2].lang.rawValue{
//                    resultArray[index1] += 1
//                }
//            } else {
//                if Int(tempQuery[4])! <= newInfo[index2].score && tempQuery[3] == newInfo[index2].soulFood.rawValue && tempQuery[2] == newInfo[index2].level.rawValue && tempQuery[1] == newInfo[index2].end.rawValue && tempQuery[0] == newInfo[index2].lang.rawValue{
//                    resultArray[index1] += 1
//                }
//            }
        }
    }
        
    return resultArray
}

solution(["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"], ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"])
