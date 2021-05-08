import Foundation
import XCTest
public struct TestRunner {
    public init(){}
    public func runTests(textClass:AnyClass){
        let test = textClass as! XCTestCase.Type
        let testSuit = test.defaultTestSuite
        testSuit.run()
    }
}
