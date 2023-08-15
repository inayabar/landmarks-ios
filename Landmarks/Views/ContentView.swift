//
//  ContentView.swift
//  Landmarks
//
//  Created by Iñaki Yabar Bilbao on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
