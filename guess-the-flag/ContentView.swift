//
//  ContentView.swift
//  guess-the-flag
//
//  Created by G H Mahimaanvita on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //btw x,y,z stacks are structs and we call the initializers with closures, conventionally, trailing closure. It is set to the content property of struct.
        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom) //linear gradient, gradient are structs, lin grad conforms to view, but not Gradient.
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
