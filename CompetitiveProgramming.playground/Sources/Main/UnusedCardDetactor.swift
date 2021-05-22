/**
 The TransferWise APAC Cards team launched their Singapore debit cards in October 2019. Dozens of thousands of customers ordered a card but a significant percentage of these customers have not used their card. To increase the conversion rate, the marketing team would like to send them an email to all the customers who haven’t made any transaction with their card. They need your help to generate this list.

 The input is the list of customer ids and the list of transactions and your program should output the list of the ids of the customers who haven’t used the card, sorted by ascending id. If everyone has used their card, you should print "Empty list".

 Input Format

 The first line contains the number of customer ids, C. The second line contains the number of transactions, T. Each of the next C lines contain a customer id, in a random order. The customer ids are integers. Each of the next T lines contain two integers: the transaction id and the customer ids, separated by a space. We guarantee that the customer ids belong to the list of customer ids.

 Example:

 5
 7
 15
 12
 10
 18
 19
 1 12
 2 15
 3 12
 4 18
 5 15
 6 12
 7 12
 Constraints

 1 <= C < 20000 (number of customers)
 1 <= T < 20000 (number of transactions)
 There is always at least one customer without transaction
 Output Format

 Your program should print the ordered list of the ids of the customers who haven’t used the card, separated by spaces. If everyone has used their card, you should print "Empty list".

 Example

 10 19
 Sample Input 0

 5
 7
 15
 12
 10
 18
 19
 1 12
 2 15
 3 12
 4 18
 5 15
 6 12
 7 12
 Sample Output 0

 10 19
 Explanation 0

 There are 5 customer ids: 15, 12, 10, 18 and 19, and there are 7 transactions. Customers 12, 15 and 18 have used their cards. This means that the customers who haven’t used their cards are customers 10 and 19. The ordered list separated by spaces should be: "10 19".


 */

import Foundation
import os

public class UnUsedCardDetect{
    
    public init(){
        
    }

    public func unUsedCardDetect(arrCardId:[Int],arrT:[[String:Any]]) -> String {

        var set = Set<Int>()
        for data in arrT{
            let cardId = data["C"] as? Int ?? 0
            set.insert(cardId)
        }
                
        var outputString = String()
        
        for item in arrCardId.sorted(){
            if !set.contains(item){
                outputString.append(String(format: "%d ", item))
            }
        }
        
        if outputString.isEmpty{
            outputString = "Empty list"
        }
        
        return outputString.trimmingCharacters(in: .whitespaces)
}

}
