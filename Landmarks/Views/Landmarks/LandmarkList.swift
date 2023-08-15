//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Iñaki Yabar Bilbao on 8/10/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State var showFavoritesOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        if showFavoritesOnly {
            return modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        } else {
            return modelData.landmarks
        }
    }
    var body: some View {
        NavigationView {
            List(){
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                        .fontWeight(.semibold)
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
