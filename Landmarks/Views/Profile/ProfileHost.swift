//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Tenzin wangyal on 7/3/22.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack{
                if editMode?.wrappedValue == .active{
                    Button("Cancel", role: .cancel){
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
                
            }
//when you edit a name but dont apply, its stats
//this code makes it so that the chosen data is there.
            if editMode?.wrappedValue == .inactive{
            ProfileSummary(profile: modelData.profile)
            }else{
                ProfileEditor(profile: $draftProfile)
                    .onAppear(){
                        draftProfile = modelData.profile
                    }
                    .onDisappear(){
                        draftProfile = modelData.profile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
