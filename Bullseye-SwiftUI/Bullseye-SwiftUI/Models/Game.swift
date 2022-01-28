//
//  Game.swift
//  Bullseye-SwiftUI
//
//  Created by Victor Hugo Benitez Bosques on 24/01/22.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1...100)
  var score: Int = 0
  var round: Int = 1
  
  func calculateScore(sliderValue: Int) -> Int {
//    var different = 0
//    if target > sliderValue {
//      different = target - sliderValue
//    } else if target < sliderValue {
//      different = sliderValue - target
//    } else {
//      different = 0
//    }
//
//    var different = target - sliderValue
//    if different < 0 {
//      different *= -1
//    }
    100 - abs(target - sliderValue)
  }
}

/*
 if target > slider = target - slider
 if target < slider = slider - target
 
 */
