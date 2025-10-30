//
//  LocationModel.swift
//  AppOctober
//
//  Created by odc on 30/10/2025.
//

import Foundation
import MapKit
struct LocationModel: Identifiable {
    let name: String
    let cityName: String
    let description: String
    let imageNames: [String]
    let link: String
    let coordinates: CLLocationCoordinate2D
    let id = UUID()
}
