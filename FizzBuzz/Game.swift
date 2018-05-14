//
//  Game.swift
//  FizzBuzz
//
//  Created by Nerimene  on 11/05/2018.
//  Copyright © 2018 Nerimene . All rights reserved.
//

class Game {
    
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        if result == move {
           score += 1
           return (true, score)
        } else {
            return (false, score)
        }
    }
}
