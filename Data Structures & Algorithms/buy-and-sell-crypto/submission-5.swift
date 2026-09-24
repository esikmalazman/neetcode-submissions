class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else {return 0}

        // buy
        var left = 0
        // sell 
        var right = 1
        // maximum profit
        var maxProfit = 0

        // iterate until the end of of collection
        while right < prices.count {
            
            // verify if the start point is less than right point value because we want to buy at minimum
            if prices[left] < prices[right] {
            // start calculation
            let currentProfit = prices[right] - prices[left]
            // assign by compare exist maxProfit to currentProfit
            maxProfit = max(maxProfit, currentProfit)
            } else {
                // move the start point where it at very minimum
                left = right
            }
           
           // increment the right point to continue analyse the chunk
           right = right + 1

        }

        // return the result from profit calculation
        return maxProfit
    }
}

// data structure: array, integer
// looking for: maximum profit can achive from buy to sell
// constraints: once buy we could not reverse the day to sell


// sliding window - analyse item in collection from left to right
// 1. left - buy, right - sell , maximumProfit - track max calculation property
// 2. iterate the collection
// 3. calculate the profit from left to right

