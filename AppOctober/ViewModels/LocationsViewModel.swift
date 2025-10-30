//
//  LocationsViewModel.swift
//  AppOctober
//
//  Created by odc on 30/10/2025.
//

import Combine
import Foundation

class LocationsViewModel: ObservableObject {

    @Published var locationsList: [LocationModel]

    init() {
        self.locationsList = []
    }

    func fetchAllLocations() {
        locationsList = locations
    }

}
