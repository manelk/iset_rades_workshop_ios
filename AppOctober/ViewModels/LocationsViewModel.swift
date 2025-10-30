//
//  LocationsViewModel.swift
//  AppOctober
//
//  Created by odc on 30/10/2025.
//

import Foundation
import Combine

class LocationsViewModel: ObservableObject {
    
    @Published var locationsList: [LocationModel]
    
    init(){
        self.locationsList=[]
    }
    
    func fetchAllLocations(){
        
        locationsList=locations
    }
    
    
}
