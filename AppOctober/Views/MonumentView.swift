//
//  MonumentView.swift
//  AppOctober
//
//  Created by odc on 30/10/2025.
//

import SwiftUI

struct MonumentView: View {
    var body: some View {
        
        HStack {
            Image("jam_image").resizable()
                .frame(
                    width: 100,
                    height: 100
                )
                .cornerRadius(15)
            VStack(
                alignment:
                    .leading
            ) {
                Text("City").bold()

                Text("Monument name")
                    .font(.system(size: 30, weight: .bold))

            }
        }
    }
}

#Preview {
    MonumentView()
}
