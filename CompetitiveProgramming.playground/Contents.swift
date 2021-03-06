import XCTest
import PlaygroundSupport

class SumTwoNumberTest:XCTestCase{
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_addShouldReturn5WhenSum2And3(){
        let sumTwoNumber = SumTwoNumber (num1: 2, num2: 3)
        XCTAssert(sumTwoNumber.sum()==5)
    }
    
    func test_addShouldReturn5(){
        let sumTwoNumber = SumTwoNumber (num1: 2, num2: 3)
        XCTAssert(sumTwoNumber.sum()==4)
    }
    
}

class MultiplyTwoNumberTest:XCTestCase{
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_multiplyShouldReturn6WhenSum2And3(){
        let multiplyTwoNumber = MultiplyTwoNumber (num1: 2, num2: 3)
        XCTAssert(multiplyTwoNumber.multiply()==6)
    }
    
    func test_multiplyShouldReturn5(){
        let multiplyTwoNumber = MultiplyTwoNumber (num1: 2, num2: 3)
        XCTAssert(multiplyTwoNumber.multiply()==4)
    }
    
    func testMultiplyParameterized() {
        let cases = [(4,3,12), (2,4,8), (3,5,10), (4,6,20)]
        cases.forEach {
            let multiplyTwoNumber = MultiplyTwoNumber (num1: $0, num2: $1)
            XCTAssert(multiplyTwoNumber.multiply()==$2)

        }
    }
    
}

class RemoveArrayDuplicateTest:XCTestCase{
    private var removeArrayDuplicate: RemoveArrayDuplicate!
    override func setUp() {
        super.setUp()
        removeArrayDuplicate = RemoveArrayDuplicate()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_shouldRemoveArrayDuplicate(){
        let actual = removeArrayDuplicate.removeArrayDuplicate(A:[ 5, 2, 5, 5, 6, 6, 10 ])
        XCTAssert(actual.count == 7)
        XCTAssertEqual(actual, [2,5,6,5,2,6,10])
    }
    
    func test_withParameterized(){
        let cases = [([5, 2, 5, 5, 6, 6, 10 ],[2,5,6,5,2,6,10]), ([5, 3, 3, 5, 6, 6, 10 ],[3,3,6,5,3,6,10])]
        
        cases.forEach {
            
            let actual = removeArrayDuplicate.removeArrayDuplicate(A:$0)
            XCTAssertEqual(actual, $1)
            
        }
        
    }
    
}

class FindMaxNumberByInsertingNTest:XCTestCase{
    private var findMaxNumberByInsertingN: FindMaxNumberByInsertingN!
    override func setUp() {
        super.setUp()
        findMaxNumberByInsertingN = FindMaxNumberByInsertingN()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_withParameterizedValue(){
        let cases = [(268,5268), (928,9528),(999,9995)]
        cases.forEach {
            
            let result = findMaxNumberByInsertingN.findMaxNumberByInsertingN(N:$0)
            XCTAssertEqual(result, $1)
            
        }
    }
    
}

class UnUsedCardDetectTest:XCTestCase{
    private var unUsedCardDetect: UnUsedCardDetect!
    override func setUp() {
        super.setUp()
        unUsedCardDetect = UnUsedCardDetect()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_unusedCard(){
                    
        let arrCardId = [15,12,10,18,19]
        let arrT :[[String:Any]] = [["T":1,"C":12],
                                          ["T":2,"C":15],
                                          ["T":3,"C":12],
                                          ["T":4,"C":18],
                                          ["T":5,"C":15],
                                          ["T":6,"C":12],
                                          ["T":7,"C":12],
                                         ]
            
        let unusedCard = unUsedCardDetect.unUsedCardDetect(arrCardId:arrCardId, arrT: arrT)
        XCTAssertEqual(unusedCard, "10 19")
    }
    
    func test_WhenAllCardUsed(){
                    
        let arrCardId = [15,12,10,18,19]
        let arrT :[[String:Any]] = [["T":1,"C":12],
                                          ["T":2,"C":15],
                                          ["T":3,"C":12],
                                          ["T":4,"C":18],
                                          ["T":5,"C":15],
                                          ["T":6,"C":10],
                                          ["T":7,"C":19],
                                         ]
            
        let unusedCard = unUsedCardDetect.unUsedCardDetect(arrCardId:arrCardId, arrT: arrT)
        XCTAssertEqual(unusedCard, "Empty list")
    }
    
}

TestRunner().runTests(textClass: SumTwoNumberTest.self)
TestRunner().runTests(textClass: MultiplyTwoNumberTest.self)
TestRunner().runTests(textClass: RemoveArrayDuplicateTest.self)
TestRunner().runTests(textClass: FindMaxNumberByInsertingNTest.self)
TestRunner().runTests(textClass: UnUsedCardDetectTest.self)


