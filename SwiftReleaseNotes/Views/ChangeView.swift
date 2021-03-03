//
//  ChangeView.swift
//  SwiftReleaseNotes
//
//  Created by William Gray on 3/3/21.
//

import SwiftUI

struct ChangeView: View {
    var change: String
    var showPrefix = true
    var itemPrefix = "* "
    
    var body: some View {
        Text("\( showPrefix ? itemPrefix : "")\(change)")
    }
}

struct ChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeView(change: "Adjusts Secret Agent window behavior to scroll to last selected Field on reappearance")
    }
}
