//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Nerimene  on 11/05/2018.
//  Copyright © 2018 Nerimene . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int? {
        didSet {
            numberButton.setTitle("\(gameScore ?? 0)", for: UIControl.State.normal)
        }
    }
    var game: Game?
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzbuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        gameScore = game?.score ?? 0
    }

    func play(move: Move) {
        guard let gameExists = game else {
        print("Something not so funny happened..")
            return
        }
        let response = gameExists.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzbuzzButton:
            play(move: .fizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
    @IBAction func paylAgain(_ sender: Any)
    {
        gameScore = 0
    }
}

