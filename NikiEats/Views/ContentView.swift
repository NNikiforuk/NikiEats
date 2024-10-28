//
//  ContentView.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 24/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("fruits")
                .resizable()
                .frame(width: 450, height: 200)
            VStack(alignment: .leading) {
                Text("Kanapki z szynką i ogórkiem kiszonym")
                    .font(.title)
                HStack {
                    Label("KCAL: 340", systemImage: "carrot")
                        .font(.subheadline)
                    Label("B: 16,5", systemImage: "carrot")
                        .font(.subheadline)
                        .padding(.horizontal, 30)
                    Spacer()
                }
                Divider()
                VStack(alignment: .leading) {
                    Text("Składniki")
                        .font(.title2)
                        .padding(.vertical, 10)
                    Text("składnik")
                    Text("składnik")
                    Text("składnik")
                    Text("składnik")
                }
                VStack(alignment: .leading) {
                    Text("Przepis")
                        .font(.title2)
                        .padding(.vertical, 10)
                    Text("1. Gflkgjflkhglk fkxjghkfdhgkdfhg dkfjghkdfhkskładnik")
                    Text("1. Gflkgjflkhglk fkxjghkfdhgkdfhg dkfjghkdfhkskładnik")
                    Text("1. Gflkgjflkhglk fkxjghkfdhgkdfhg dkfjghkdfhkskładnik")
                    Text("1. Gflkgjflkhglk fkxjghkfdhgkdfhg dkfjghkdfhkskładnik")
                    Text("1. Gflkgjflkhglk fkxjghkfdhgkdfhg dkfjghkdfhkskładnik")
                }
                .padding(.vertical, 10)
            }
            .padding()
        }
        .ignoresSafeArea()
        .background(.yellow.opacity(0.45))
        Spacer()
    }
}

#Preview {
    ContentView()
}
