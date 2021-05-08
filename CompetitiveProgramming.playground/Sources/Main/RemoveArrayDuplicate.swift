/**
 Write a function:

 public func solution(_ A : inout [Int]) -> [Int]


 that, given a zero-indexed array A consisting of N integers, returns an array of:

 - the number of integers occuring multiple times
 - the lowest duplicate integer (0 if no duplicates)
 - the highest duplicate integer (0 if no duplicates)
 - elements of the input integers without duplicates. The ordering of the items must not change. If numbers appear multiple times, the first occurring integer has to be preserved.

 Example:

 Input: [ 5, 2, 5, 5, 6, 6, 10 ]
 Output: [ 2, // Number of numbers occuring multiple times (here: 5 and 6)
 5, // Lowest duplicate
 6, // Highest duplicate

 // Input array with duplicates removed
 5,
 2,
 6,
 10 ]
 
 */

import Foundation

public class RemoveArrayDuplicate{
    public init() {
    }
    
    public func removeArrayDuplicate(A:[Int]) -> [Int]{
        var result = [Int]()
        let duplicates = Array(Set(A.filter({ (i: Int) in A.filter({ $0 == i }).count > 1})))
        let sort = duplicates.sorted()
        
        if duplicates.count>0{
            result.append(duplicates.count)
            result.append(sort[0])
            result.append(sort[sort.count-1])
        }else{
            result.append(0)
            result.append(0)
            result.append(0)
        }
     
        var sortArray = [Int]()
        for n in A{
            if sortArray.contains(n){
                
            }else{
                sortArray.append(n)
                result.append(n)
            }
        }
        return result;
    }
}
