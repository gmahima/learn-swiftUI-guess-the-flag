//
//  ContentView.swift
//  guess-the-flag
//
//  Created by G H Mahimaanvita on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Cyprus", "India", "Japan", "Denmark", "Finland", "USA"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var score = 0
    @State private var scoreTitle = ""
    @State private var scoreMessage = ""
    var body: some View {
        ZStack(content: {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack(alignment: .center, spacing: 30, content: {
                VStack(content: {
                    Text("Tap the flag of")
                    Text(countries[correctAnswer]).font(.largeTitle).fontWeight(.black)
                }).foregroundColor(.white)
                ForEach(0..<3, content: {
                    flag in Button(action: {
                        flagTapped(flag)
                    }, label: {
                        Image(countries[flag]).renderingMode(.original).resizable().frame(width: 150, height: 80)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 2)
                    })
                })
                Section(content: {
                    Text("score: \(score)")
                })
                Spacer()
            })
            
        }).alert(isPresented: $showingScore, content: {
            Alert(title: Text(scoreTitle), message: Text("\(scoreMessage). Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                askQuestion()
            })
//            Alert(title: Text(scoreTitle), message: Text(scoreMessage), primaryButton: .default(Text("Continue"), action: {
//                askQuestion()
//            }), secondaryButton: .default(Text("Stop playing")))
        })
    }
    func flagTapped (_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            scoreMessage = "You're right! That IS the flag of \(countries[number])"
        }
        else {
            scoreTitle = "Wrong"
            scoreMessage = "Oops! That was the flag of \(countries[number])"
        }
        showingScore = true
    }
    func askQuestion () {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
