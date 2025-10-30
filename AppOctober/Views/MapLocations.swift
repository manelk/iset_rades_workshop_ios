//
//  MapLocations.swift
//  AppOctober
//
//  Created by odc on 30/10/2025.
//

import Combine
import MapKit
import SwiftUI

struct MapLocations: View {

    @ObservedObject var locationViewModel = LocationsViewModel()

    var body: some View {
        VStack {
            Map {
                ForEach(locationViewModel.locationsList) { location in
                    Marker(
                        location.name,
                        coordinate: location.coordinates,
                    )

                }
            }
        }
        .onAppear {
            locationViewModel.fetchAllLocations()
        }
    }
}

#Preview {
    MapLocations()
}
