import Foundation

public class MultiplyTwoNumber {
    var num1:Int
    var num2: Int
    
    public init(num1:Int, num2:Int) {
        self.num1 = num1
        self.num2 = num2
    }
    
    public func multiply() -> Int {
        return self.num1*self.num2;
    }
    
}


