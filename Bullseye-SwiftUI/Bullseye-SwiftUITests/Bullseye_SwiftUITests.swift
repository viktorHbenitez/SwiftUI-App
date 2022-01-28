//
//  Bullseye_SwiftUITests.swift
//  Bullseye-SwiftUITests
//
//  Created by Victor Hugo Benitez Bosques on 23/01/22.
//

import XCTest
@testable import Bullseye_SwiftUI

class Bullseye_SwiftUITests: XCTestCase {
  // system under test
  var sut: Game!
    
  override func setUpWithError() throws {
    sut = Game()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    sut = nil
  }
  
  func testCalculateScoreWithPositiveSliderValue() {
    // When
    // Setup data or inputs
    let guess = sut.target + 5
    // Given
    // What is it going to test
    let totalScore = sut.calculateScore(sliderValue: guess)
    // Then
    // Expected result
    XCTAssertEqual(totalScore, 95)
  }
  
  func testCalculateScoreWithMajoSliderValue() {
    let guess = sut.target - 5
    let totalScore = sut.calculateScore(sliderValue: guess)
    XCTAssertEqual(totalScore, 95)
  }
  
  /*
   TDD
   Test fail
   Tes pass using minimun code
   refactor
   */
}
