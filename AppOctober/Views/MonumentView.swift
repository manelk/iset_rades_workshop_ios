//
//  MonumentView.swift
//  AppOctober
//
//  Created by odc on 30/10/2025.
//

import SwiftUI

struct MonumentView: View {
    @ObservedObject var locationViewModel = LocationsViewModel()

    var body: some View {
        NavigationStack {
            List(locationViewModel.locationsList) {
                location in
                
                // pass the id from the location item selected
                NavigationLink {
                   
                    LocationDetailView(id: location.id)
                } label: {
                  
                    HStack {
                        Image(location.imageNames[0]).resizable()
                            .frame(
                                width: 100,
                                height: 100
                            )
                            .cornerRadius(15)
                        VStack(
                            alignment:
                                .leading
                        ) {
                            Text(location.cityName).bold()

                            Text(location.name)
                                .font(.system(size: 30, weight: .bold))

                        }
                    }
                }
            }.onAppear {
                
                
                locationViewModel.fetchAllLocations()
            }

        }

    }
}

#Preview {
    MonumentView()
}
