
/**
 Write a function solution that, given an integer N, returns the maximum possible value obtained by inserting one '5' digit inside the decimal representation of integer N.

 Examples:

 1. Given N = 268, the function should return 5268.

 2. Given N = 670, the function should return 6750.

 3. Given N = 0, the function should return 50.

 4. Given N = −999, the function should return −5999.

 Assume that:

 N is an integer within the range [−8,000..8,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
 
 */

import Foundation

public class FindMaxNumberByInsertingN{
    
    public init(){
        
    }
    
    public func findMaxNumberByInsertingN(N:Int) -> Int{
        var newArray = [Int]()

        let No = abs(N)
        var s = String(No)
        let length = s.count
        var flagInsertN = false
        
        for n in 0..<length {
            let A = s.first?.description ?? ""

            if  Int(A)! >= 5{
                newArray.append(Int(A) ?? 0)
                if n == length-1 && flagInsertN == false{
                    newArray.append(5)
                }
            }else{
                flagInsertN = true
                newArray.append(5)
                newArray.append(Int(A) ?? 0)
            }
            s.remove(at: s.startIndex)
        }
        let string = newArray.map { String($0) }
            .joined(separator: "")
        
        return Int(string)!
    }
    
}

