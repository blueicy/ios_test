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
