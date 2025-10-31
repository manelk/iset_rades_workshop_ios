//
//  LocationDetailView.swift
//  AppOctober
//
//  Created by odc on 31/10/2025.
//

import SwiftUI

struct LocationDetailView: View {
    // creation of new id to filter the list
    var id: UUID

    // call the view model we need it to trigger the function get location by Id
    @ObservedObject var locationViewModel = LocationsViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            Text(locationViewModel.locationItem.cityName)
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
        .onAppear {
            locationViewModel.fetchLocationById(id: id)
        }
    }
}

/*
#Preview {
    LocationDetailView(id: "")
}*/
