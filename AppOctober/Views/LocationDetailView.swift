//
//  LocationDetailView.swift
//  AppOctober
//
//  Created by odc on 31/10/2025.
//

import SwiftUI

struct LocationDetailView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("")
                .font(.title)
                .fontWeight(.bold)
            Text("")
                .font(.subheadline)
                .foregroundStyle(.secondary)

            Divider()

            Text("About Monument")
                .font(.title2)
                .fontWeight(.bold)

            Text("Description")

            Divider()

            Text("Discover pictures of the monument")
                .font(.title2)
                .fontWeight(.bold)

        }
        .padding()
    }
}

#Preview {
    LocationDetailView()
}
