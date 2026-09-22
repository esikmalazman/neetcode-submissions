class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else {return 0}

        var left_buy = 0
        var right_sell = 1
        var maximumProfit = 0
        
        // iterate until the right pointer no pass the end of prices collection
        while right_sell < prices.count {
            // verify if the it is profitable by comparing right to left value
            if prices[left_buy] < prices[right_sell] {
                // calculate the profit (sell - buy)
                let currentProfit = prices[right_sell] - prices[left_buy]
                // allocate the maximum by compare existing maximumProfit to currentProfit
                maximumProfit = max(maximumProfit, currentProfit)
            } else {
                // if it is not profitable(buy is higher than sell), we move left point to current right pointer location
                left_buy = right_sell
            }
            // update the right pointer to make it continue move to the next day till out of bounds
            right_sell = right_sell + 1
        }
    
        
        return maximumProfit

    }
}


// data structure: integer, array
// looking for: maximum profit can achieve

// prices index is equal to index day