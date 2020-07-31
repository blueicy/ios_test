import UIKit

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
