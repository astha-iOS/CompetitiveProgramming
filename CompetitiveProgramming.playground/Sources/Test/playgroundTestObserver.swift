import Foundation
import PlaygroundSupport
import XCTest

class playgroundTestObserver:NSObject,XCTestObservation{
    
    @objc func testCases(_ testCase:XCTestCase, didFailWith description:String, inFile filePath:String?, atLine lineNumber: Int){
        assertionFailure(description, line: UInt(lineNumber))
//        print("Test Fail at line: \(lineNumber):, \(testCase.name), \(description)")
    }
    
}
