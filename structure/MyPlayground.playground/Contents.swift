import UIKit

var str = "Hello, playground"

var myIntArray: [Int] = [1,3,5,7,9]

for index in 0..<myIntArray.count {
    myIntArray[index]
}

var someSubset = myIntArray[2...4]


var my2DArray: [[Int]] = [[1,2], [10,11], [20,30]]
var element = my2DArray[1][1]
print(element)

myIntArray.append(10)
print(myIntArray)

myIntArray.insert(4, at: 2)

myIntArray.remove(at: 3)

print(myIntArray)

typealias TCPPacket = UInt16
var maxTCPPacketsize = TCPPacket.max

func insertionSort(_ alist:inout [Int]){
    for i in 1..<alist.count {
        let tmp = alist[i]
        var j = i - 1
        while j >= 0 && alist[j] > tmp {
            alist[j+1] = alist[j]
            j = j - 1
        }
        alist[j+1] = tmp
    }
}

var intArray = Array<Int>()

intArray.capacity
intArray.reserveCapacity(500)
intArray.capacity

intArray.append(contentsOf: [60,65,70,55])
intArray.insert(55, at: 1)
intArray.insert(85, at: 5)


intArray[2...5]

for index in 0..<intArray.count {
    print(intArray[index])
}

intArray.contains(55)


var myDict: [String:String] = ["1":"One", "2":"Two", "3":"Three"]
myDict .updateValue("Four", forKey: "4")
myDict["5"] = "Five"

let removePair = myDict.removeValue(forKey: "1")
removePair

if let optResult = myDict["6"] {
    print(optResult)
} else {
    print("Key not found")
}

for (key, value) in myDict {
    print("Hoal \(key) , \(value)")
}

for (key) in myDict.keys {
    print("hola keys \(key)")
}

var stringSet = Set<String>()

var StringSet:Set = ["mary", "john","sally"]
print(StringSet.debugDescription)

StringSet.insert("patric")
if StringSet.contains("patric") {
        print("Found element")
} else {
    print("ele not found")
}

StringSet.remove("patric")

if let idx = StringSet.firstIndex(of:"john") {
    StringSet.remove(at: idx)
}
StringSet.removeFirst()
 
StringSet.sorted()


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

class MovieList {
    private var tracks = ["The Godfather", "The Dark Knight", "Pulp Action"]
    subscript(index:Int) -> String {
        get {
            return self.tracks[index]
        }
        set {
            self.tracks[index] = newValue
        }
    }
}


var modelList = MovieList()
var aMovie = modelList[0]

modelList[0] = "Forest Gump"
aMovie = modelList[0]
extension Collection {
    func encryptElements(salt: String) -> [Iterator.Element] {
        guard !salt.isEmpty else { return [] }
        guard self.count > 0 else { return [] }
        var index = self.startIndex
        var result: [Iterator.Element] = []
        repeat {
            let el = self[index]
            result.append(el)
            index = index.successor()
        } while (index != self.endIndex)
        return result
        
    }
}
