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

    
    @ObservableObject var locationViewModel = LocationsViewModel()
    var body: some View {
        Map{
            ForEach(locationViewModel.locationsList)
        }.onAppear(){
            locationViewModel.fetchAllLocations()
        }
    }
}

#Preview {
    MapLocations()
}
