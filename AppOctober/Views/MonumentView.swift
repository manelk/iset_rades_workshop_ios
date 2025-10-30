//
//  MonumentView.swift
//  AppOctober
//
//  Created by odc on 30/10/2025.
//

import SwiftUI

struct MonumentView: View {
    var body: some View {
        List (locations) {
            location in
           
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
        
    }
}

#Preview {
    MonumentView()
}
