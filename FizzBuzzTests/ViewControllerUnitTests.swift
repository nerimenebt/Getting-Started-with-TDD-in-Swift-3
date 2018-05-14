//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Nerimene  on 11/05/2018.
//  Copyright © 2018 Nerimene . All rights reserved.
//

import XCTest
@testable import FizzBuzz


class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testMoveIncrementsScore() {
        
        viewController.play(move: Move.number)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 1)
    }
    
    func testHasGame() {
        
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        
        viewController.game?.score = 2
        viewController.play(move: Move.fizz)
        
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
        
    }
    
    func testBuzzIncrementScore() {
        
        viewController.game?.score = 4
        viewController.play(move: Move.buzz)
        
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        
        viewController.game?.score = 14
        viewController.play(move: Move.fizzBuzz)
        
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
}
