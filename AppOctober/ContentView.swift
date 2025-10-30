//
//  ContentView.swift
//  AppOctober
//
//  Created by odc on 29/10/2025.
//

import SwiftUI

struct ContentView: View {
    // declare @state variable
    @State var count = 0
    @State var isBlue = false

    var body: some View {
        VStack {
            Button("change") {
                isBlue = !isBlue
            }.padding()
                .background(Color(.orange)).clipShape(Capsule())
            Text("this is the text").bold().foregroundColor(
                isBlue ? .red : .blue
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
