import Foundation



func expandTheNumber(_ number: Int) -> [Int] {
    
    
    let expandNum = String(describing: number).compactMap { Int(String($0)) }
    
    var numb = [Int]()

    if expandNum.count > 4 {
        
        numb.append(expandNum[0] * 10000)
        numb.append(expandNum[1] * 1000)
        numb.append(expandNum[2] * 100)
        numb.append(expandNum[3] * 10)
        numb.append(expandNum[4] * 1 )
        
    } else if expandNum.count > 3 {

        numb.append(expandNum[0] * 1000)
        numb.append(expandNum[1] * 100)
        numb.append(expandNum[2] * 10)
        numb.append(expandNum[3] * 1 )
        
        
    } else if expandNum.count > 2 {
        
        numb.append(expandNum[0] * 100)
        numb.append(expandNum[1] * 10)
        numb.append(expandNum[2] * 1)
        
    } else if expandNum.count > 1 {
        
        numb.append(expandNum[0] * 10)
        numb.append(expandNum[1] * 1)
        
    } else {
        
        numb.append(expandNum[0])
        
    }

    return numb

}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
