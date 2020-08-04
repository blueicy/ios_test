//
//  main.swift
//  HeckerRank
//
//  Created by MBP2 on 2020/08/02.
//  Copyright © 2020 MBP2. All rights reserved.
//

import Foundation

print("Hello, World!")

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    
    var onlyGrades = grades
    let num = onlyGrades.remove(at: 0)
    var newGrades = [Int]()
    
    func calculator(_ score:Int) -> Int{
        var standard = 100
        var returnScore = score
        while (standard > 35){
            if returnScore - standard > -3 && (returnScore < standard + 2) {
                returnScore = standard
                return returnScore
            } else {
                
            }
            standard -= 5
        }
        return returnScore
    }
    
    
    for index in 0..<num {
        var score = onlyGrades[index]
        newGrades.append(calculator(score))
    }
    
    return newGrades
}

let testArray = [4,73,67,38,33]

print(gradingStudents(grades: testArray))
