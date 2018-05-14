//
//  Brain.swift
//  FizzBuzz
//
//  Created by Nerimene  on 11/05/2018.
//  Copyright © 2018 Nerimene . All rights reserved.
//

class Brain {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
//      OR
    
//    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
//        if number % divisor == 0 {
//            return true
//        } else {
//            return false
//        }
//    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return .fizzBuzz
        }
        else if isDivisibleByThree(number: number) {
            return .fizz
        }
        else if isDivisibleByFive(number: number) {
            return .buzz
        }
        else {
            return .number
        }
    }
}
