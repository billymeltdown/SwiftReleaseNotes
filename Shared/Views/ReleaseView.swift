//
//  ReleaseView.swift
//  ReleaseNotes
//
//  Created by William Gray on 3/1/21.
//

import SwiftUI

struct ReleaseView: View {
    var release: Release
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(release.imageName)
                VStack(alignment: .leading) {
                    Text("Version \(release.version)")
                        .font(.title)
                    HStack {
                        Text(release.releaseDate, formatter: Self.dateFormatter)
                            .foregroundColor(.secondary)
                        Spacer()
                        if release.link != nil {
                            Link("Blog", destination: release.link!)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            // Nesting a List in a List may only be valid if navigation is used...
//            List {
//                ForEach(release.changes, id: \.self) { change in
//                    ChangeView(change: change)
//                }
//            }
            ForEach(release.changes, id: \.self) { change in
                ChangeView(change: change)
            }
        }
    }
}

struct ReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ReleaseView(release: ModelData().releases[0])
            ReleaseView(release: ModelData().releases[4])
        }
    }
}
