//
//  Terminal.swift
//  HomeWorkTerminal
//
//  Created by Baktyiar Shamyrbaev on 2/11/21.
//

import Foundation

class Terminal {
    
    private var bank: [Int: Int] = [
        5000 : 3,
        2000 : 1,
        1000 : 25,
        500 : 10,
        200 : 8,
        100 : 6,
        20 : 30,
    ]

    func getMoney(sum: Int) -> [Int] {
        var sumResult = sum // 2100
        var result: [Int] = []
       var test = false
        
        while sumResult > 0 {
            bank.forEach { item in
                if sumResult >= item.key && item.value > 0 && sumResult > 0 {
                    sumResult = sumResult - item.key // 2100 -2000
                    result.append(item.key) // 2000
                    bank[item.key] = item.value - 1 // 29
                    
                } else if(sumResult != item.key && item.value == 0 && !test){
                    sumResult = 0
                    test = true
                    print("Terminal doesn't have enough money \(sum)!")
                    
                }
            }
        }
        
      
    
            return result
        
        
      
    }
    func putMoney(sum:Int){
        bank.forEach { item in
            if sum > 0 && sum == item.key {
                bank[item.key] = item.value + 1
            }
        }
        
        print(bank)
    }
}

