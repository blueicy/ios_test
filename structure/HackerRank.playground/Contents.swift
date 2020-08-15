import UIKit
import Foundation

func staircase(n: Int) -> Void {
    let newString = " "
    let hash = "#"
    


    for index in 1..<n+1 {
        var geto = index
        var printString = ""
        
        while ( n - geto > 0 ) {
            printString += newString
            geto = geto + 1
        }
        
        geto = index
        while ( geto > 0 ) {
            printString += hash
            geto -= 1
        }

        print(printString)
    }
    
}

staircase(n: 6)


func miniMaxSum(arr: [Int]) -> Void {
    var arrSort = arr.sorted(by: {$0 < $1})
    
        let min = arrSort[0] + arrSort[1] + arrSort[2] + arrSort[3]
        let max = arrSort[1] + arrSort[2] + arrSort[3] + arrSort[4]
    // for index in 0..<arrSort.count {
        print(String(min) + " " + String(max))
  
    // }

}

let greeting = "Guten Tag!"
    let index = greeting.index(greeting.startIndex, offsetBy: 7)
    greeting[index]

var timeString = "07:05:45PM"
let aOrP = timeString.index(timeString.startIndex, offsetBy: 8)
let endaOrP = timeString.index(timeString.startIndex, offsetBy: 9)
timeString[aOrP]

let hourStringEnd = timeString.index(timeString.startIndex, offsetBy: 1)
var hoursString = timeString[timeString.startIndex...hourStringEnd]


if timeString[aOrP] == "P" {
    var hour = Int(hoursString)
    hour = hour! + 12
    if hour == 24{
        hour = 0
    }
    timeString.replaceSubrange(timeString.startIndex...hourStringEnd, with: String(hour!))
    timeString.removeSubrange(aOrP...endaOrP)
//    return timeString
} else {
    var hour = Int(hoursString)
    if hour == 12 {
        hour = 0
        timeString.replaceSubrange(timeString.startIndex...hourStringEnd, with: String(hour!))
    }
    timeString.removeSubrange(aOrP...endaOrP)
//    return timeString
}


func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */
var timeString = s
let aOrP = timeString.index(timeString.startIndex, offsetBy: 8)
let endaOrP = timeString.index(timeString.startIndex, offsetBy: 9)
timeString[aOrP]

let hourStringEnd = timeString.index(timeString.startIndex, offsetBy: 1)
var hoursString = timeString[timeString.startIndex...hourStringEnd]


if timeString[aOrP] == "P" {
    var hour = Int(hoursString)
    hour = hour! + 12
    if hour == 24{
        hour = 0
        timeString.replaceSubrange(timeString.startIndex...hourStringEnd, with: String("00"))
    } else {
    timeString.replaceSubrange(timeString.startIndex...hourStringEnd, with: String(hour!))
    }
    timeString.removeSubrange(aOrP...endaOrP)
    return timeString
} else {
    var hour = Int(hoursString)
    if hour == 12 {
        hour = 0
        timeString.replaceSubrange(timeString.startIndex...hourStringEnd, with: String("00"))
    }
    timeString.removeSubrange(aOrP...endaOrP)
    return timeString
}
}

timeConversion(s: "12:45:54PM")

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    
    var onlyGrades = grades
    let num = onlyGrades.remove(at: 0)
    var newGrades = [Int]()
    
    func calculator(_ score:Int) -> Int{
        var standard = 100
        var returnScore = score
        while (standard > 35){
            if (returnScore - standard > -3) && (returnScore < standard + 2) {
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


