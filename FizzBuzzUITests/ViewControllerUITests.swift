//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Nerimene  on 11/05/2018.
//  Copyright © 2018 Nerimene . All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        
        let app = XCUIApplication()
        
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "2")
        
    }
    
    func testTapFizzButtonIncrementsTo3() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "3")
        
    }
    
    func testTapBuzzButtonIncrementsTo5() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap() //1
        numberButton.tap() //2
        fizzButton.tap() //3
        numberButton.tap() //4
        buzzButton.tap() //5
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapFizzBuzzButtonIncrementsTo15() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        numberButton.tap() //1
        numberButton.tap() //2
        fizzButton.tap() //3
        numberButton.tap() //4
        buzzButton.tap() //5
        fizzButton.tap() //6
        numberButton.tap() //7
        numberButton.tap() //8
        fizzButton.tap() //9
        buzzButton.tap() //10
        numberButton.tap() //11
        fizzButton.tap() //12
        numberButton.tap() //13
        numberButton.tap() //14
        fizzBuzzButton.tap() //15
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "15")
    }
    
}
