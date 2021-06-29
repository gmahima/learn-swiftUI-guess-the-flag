//
//  ContentView.swift
//  guess-the-flag
//
//  Created by G H Mahimaanvita on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
            Color(.blue).ignoresSafeArea() //under
            Color(red: 1, green: 1, blue: 1, opacity: 0.7).frame(width: 100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100, alignment: .leading)//places the view in an invisible frame.
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/.background(Color.white) //background takes a view as arg returns the modified view. you can add Text as background too.
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
