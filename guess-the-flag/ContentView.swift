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
        Button(action: {
            test += 10
            showAlert = true
        }, label: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 2, content: {
                Image(systemName: "pencil")
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text("\(test)")
                })
                
            })
        }).alert(isPresented:  $showAlert, content: {
            Alert(title: Text("Some alert"), message: Text("some alert message"), dismissButton: .default((Text("Ok"))))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
