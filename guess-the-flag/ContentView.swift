//
//  ContentView.swift
//  guess-the-flag
//
//  Created by G H Mahimaanvita on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
            VStack(alignment: .center, spacing: 20, content: {
                ForEach(0..<3, content: {
                    num in return HStack(alignment: .center, spacing: 38){
                        ForEach(0..<3, content: {
                            numin in return Text("|")
                        })
                    }
                })
            })
            VStack(alignment: .center, spacing: 20, content: {
                ForEach(0..<3, content: {
                    num in return HStack(alignment: .center, spacing: 20){
                        ForEach(0..<3, content: {
                            numin in return Text("\(num) \(numin)")
                        })
                    }
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
