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

    // Create a function to filter the locationsList by id
    // function will get an id uuid from the list from there we want to filter the list to return one element only by uuid
    func fetchLocationById(id: UUID) -> LocationModel {
        return locationsList.filter { $0.id == id }[0]
    }
}
