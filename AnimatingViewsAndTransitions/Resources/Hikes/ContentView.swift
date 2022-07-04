//
//  ContentView.swift
//  Landmarks
//
//  Created by Tenzin wangyal on 6/20/22.
//

import SwiftUI

/*@ContentView and @ContentView_Previews are default structs.
 @ContentView conforms to @View protocol.
 @ContentView_Previews conforms to @PreviewProvider protocol.
*/
struct ContentView: View {
    @State private var selection: Tab = .featured
    enum Tab {
    case featured
    case list
    }
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem{
                    Label("Featured",systemImage: "star")
                }
                .tag(Tab.featured)
        
        LandmarksList()
            .tabItem{
                Label("List",systemImage: "list.bullet")
            }
            .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
