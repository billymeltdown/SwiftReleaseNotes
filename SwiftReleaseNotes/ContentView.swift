//
//  ContentView.swift
//  SwiftReleaseNotes
//
//  Created by William Gray on 3/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ReleasesList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
