//
//  ContentView.swift
//  New Task
//
//  Created by Ishak Essam on 07/03/2023.
//

import SwiftUI

 struct Item {
    let username: String
    let Phone: String
}

struct ContentView: View {
    @State var Booe:Bool=false

    @State private var items = [Item]()
    var body: some View {
        NavigationView {
        VStack {
            Spacer()
            NavigationLink(destination: InputUi()) {
            HStack {
                Spacer()
                Button(action: {
                }, label: {
                    Text("+")
                    .font(.system(.largeTitle))
                    .frame(width: 77, height: 70)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 7)
                })                .background(Color.blue)
                .cornerRadius(38.5)
                .padding()
                .shadow(color: Color.black.opacity(0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
            }
        }
}
        }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
