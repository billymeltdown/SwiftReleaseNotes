//
//  ReleasesList.swift
//  SwiftReleaseNotes
//
//  Created by William Gray on 3/3/21.
//

import SwiftUI

struct ReleasesList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        List {
            ForEach(modelData.releases) { release in
                ReleaseView(release: release)
                    .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ReleasesList_Previews: PreviewProvider {
    static var previews: some View {
        ReleasesList()
            .environmentObject(ModelData())
    }
}
