//
//  ContentView.swift
//  Bullseye-SwiftUI
//
//  Created by Victor Hugo Benitez Bosques on 23/01/22.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  // 1. Binding sliderValue
  @State private var sliderValue: Double = 50.0
  @State private var game: Game = Game()
  
  var body: some View {
    VStack {
      Text("😘😘😘 \nPUT THE BULLEYES AS CLSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .font(.footnote)
        .lineSpacing(4.0)
      Text("\(game.target)")
        .bold()
        .fontWeight(.black)
        .font(.largeTitle
        )
      HStack {
        Text("1")
          .bold()
        // 2. Binding sliderValue
        Slider(value: $sliderValue, in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button(action: {
        alertIsVisible = true
      }) {
        Text("Hit Me")
      }
      .alert(isPresented: $alertIsVisible, content: {
        let roundedValue: Int = Int(sliderValue)
        return Alert(title: Text("Hello There"), message: Text("Value of the slider is \(roundedValue), score \(game.calculateScore(sliderValue: roundedValue))"), dismissButton: .default(Text("Awesome")))
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
