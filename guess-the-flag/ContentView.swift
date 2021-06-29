//
//  ContentView.swift
//  guess-the-flag
//
//  Created by G H Mahimaanvita on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var test = 4
    @State var showAlert = false
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            ForEach(0..<3, content: {
                val1 in VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    ForEach(0..<3, content: {
                        val2 in Button(action: {
                            showAlert = true
                        }, label: {
                            ZStack(alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
                                RadialGradient(gradient: Gradient(colors: [Color.white, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 100).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("\(val1) \(val2)")
                            })
                        }).alert(isPresented: $showAlert, content: {
                            Alert(title: Text("\(val1) \(val2) says"), message: Text("Hello"), dismissButton: .default(Text("OK")))
                        })
                    })
                })
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
