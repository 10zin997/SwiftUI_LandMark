//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Tenzin wangyal on 7/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarksList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
