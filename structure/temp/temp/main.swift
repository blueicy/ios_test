//
//  main.swift
//  temp
//
//  Created by MBP2 on 2020/07/30.
//  Copyright © 2020 MBP2. All rights reserved.
//

import Foundation

print("Hello, World!")

func solve(_ colorCodes: [String]) -> [(Int, Int, Int)] {
    guard let numberOfCodesChar = colorCodes.first!.first else {
        print("Error01")
        return [(0,0,0)]
    }

    print(numberOfCodesChar)
    let numberOfCodes = Int(String(numberOfCodesChar)) ?? 0
    
    if numberOfCodes == 0 {
        return [(0,0,0)]
    }
    
    var returnArray = [(Int, Int, Int)]()
    
    func charToNumber(_ char:Character) -> Int {
        switch String(char) {
        case "0":
            return 0
        case "1":
                return 1
            case "2":
                return 2
            case "3":
                return 3
            case "4":
                return 4
            case "5":
                return 5
            case "6":
                return 6
            case "7":
                return 7
            case "8":
                return 8
            case "9":
                return 9
            case "A":
                return 10
            case "B":
                return 11
            case "C":
                return 12
            case "D":
                return 13
            case "E":
                return 14
            case "F":
                return 15
        default:
            print("Error03")
            return 0
        }
    }
    
    func stringToNumber(_ string: String) -> Int {
        let begin = string.first!
        let end = string.last!
        var resultNumber = charToNumber(begin) * 10
        resultNumber += charToNumber(end)
        return resultNumber
    }
    
    func danonog(_ hex:String)->(Int,Int,Int){
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return (((Int(rgbValue) & 0xFF0000) >> 16), ((Int(rgbValue) & 0x00FF00) >> 8), (Int(rgbValue) & 0x0000FF))
    }
    

    
//    let rangeRedStart = colorCodes[1].index(colorCodes[1].startIndex, offsetBy: 0)
//    let rangeRedEnd = colorCodes[1].index(colorCodes[1].startIndex, offsetBy: 2)
//    let rangeRed = rangeRedStart..<rangeRedEnd
//
//    let rangeGreenStart = colorCodes[1].index(colorCodes[1].startIndex, offsetBy: 3)
//    let rangeGreenEnd = colorCodes[1].index(colorCodes[1].startIndex, offsetBy: 4)
//    let rangeGreen = rangeGreenStart..<rangeGreenEnd
//
//    let rangeBlueStart = colorCodes[1].index(colorCodes[1].startIndex, offsetBy: 5)
//    let rangeBlueEnd = colorCodes[1].index(colorCodes[1].startIndex, offsetBy: 6)
//    let rangeBlue = rangeBlueStart..<rangeBlueEnd
    
    func newEre(_ hex:String)->(Int,Int,Int) {
        var tempColorCode:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        print(tempColorCode)
        if (tempColorCode.hasPrefix("#")) {
           tempColorCode.remove(at: tempColorCode.startIndex)
       }
//
//        tempColorCode.character
//
//        let redString = tempColorCode.substring(with: rangeRed)
//         let greenString = tempColorCode.substring(with: rangeGreen)
//         let blueString = tempColorCode.substring(with: rangeBlue)
//        print(redString)
//        print(greenString)
//        print(blueString)
        let rgbValue = Int(tempColorCode, radix: 16)!
        return (((Int(rgbValue) & 0xFF0000) >> 16), ((Int(rgbValue) & 0x00FF00) >> 8), (Int(rgbValue) & 0x0000FF))
        
        
//        return (decimal,decimal2,deciaml3)
        
    }

    
    for index in 1...numberOfCodes {
        if !colorCodes[index].hasPrefix("#") {
            print("Error02")
        }
        let tempColorCode = colorCodes[index]
        
        let rangeRedStart = tempColorCode.index(tempColorCode.startIndex, offsetBy: 0)
        let rangeRedEnd = tempColorCode.index(tempColorCode.startIndex, offsetBy: 2)
        let rangeRed = rangeRedStart..<rangeRedEnd

        let rangeGreenStart = tempColorCode.index(tempColorCode.startIndex, offsetBy: 3)
        let rangeGreenEnd = tempColorCode.index(tempColorCode.startIndex, offsetBy: 5)
        let rangeGreen = rangeGreenStart..<rangeGreenEnd

        let rangeBlueStart = tempColorCode.index(tempColorCode.startIndex, offsetBy: 6)
        let rangeBlueEnd = tempColorCode.index(tempColorCode.startIndex, offsetBy: 7)
        let rangeBlue = rangeBlueStart..<rangeBlueEnd

        
        let redString = tempColorCode.substring(with: rangeRed)
        let greenString = tempColorCode.substring(with: rangeGreen)
        let blueString = tempColorCode.substring(with: rangeBlue)
//
//        let redNumber = stringToNumber(redString)
//        let greenNumber = stringToNumber(greenString)
//        let blueNumber = stringToNumber(blueString)
//        returnArray.append(danonog(tempColorCode))
        returnArray.append(newEre(tempColorCode))
//        print("\(redNumber) \(greenNumber) \(blueNumber)" )
//        returnArray.append((redNumber,greenNumber,blueNumber))
    }
    
    return returnArray
}
    
var tempData = [String]()
tempData.append("5")
tempData.append("#40A1A7")
tempData.append("#27A0CF")
tempData.append("#846175")
tempData.append("#C9913C")
tempData.append("#15FBE2")


let result = solve(tempData)

func read() -> [String] {
    var tempData = [String]()
    tempData.append("5")
    tempData.append("#40A1A7")
    tempData.append("#27A0CF")
    tempData.append("#846175")
    tempData.append("#C9913C")
    tempData.append("#15FBE2")
    return tempData
}

func write(_ result: [(Int, Int, Int)]) {
    result.forEach {
        print("\($0) \($1) \($2)")
    }
}

write(solve(read()))
