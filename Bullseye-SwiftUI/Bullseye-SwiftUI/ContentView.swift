//
//  ContentView.swift
//  Bullseye-SwiftUI
//
//  Created by Victor Hugo Benitez Bosques on 23/01/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("😘😘😘 \nPUT THE BULLEYES AS CLSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .font(.footnote)
        .lineSpacing(4.0)
      Text("89")
      HStack {
        Text("1")
        Slider(value: .constant(50), in: 1.0...100.0)
        Text("100")
      }
      Button(action: {}) {
        Text("Hit Me")
      }
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
