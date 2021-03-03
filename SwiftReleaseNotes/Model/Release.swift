//
//  Release.swift
//  ReleaseNotes
//
//  Created by William Gray on 3/2/21.
//

import Foundation

struct Release: Hashable, Codable {
    var version: String
    var build: Int
    var date: String
    var blogURL: String?
    var changes: [String]
    var isBeta: Bool?
    
    var link: URL? {
        if (blogURL != nil) {
            return URL(string: blogURL!)
        } else {
            return nil
        }
    }
    
    static let isoDateFormatter: ISO8601DateFormatter = ISO8601DateFormatter()
    
    var releaseDate: Date? {
        return Self.isoDateFormatter.date(from: date)
    }
    
    var imageName: String {
        if (isBeta != nil && isBeta! == true) {
            return "betaReleaseIcon"
        } else {
            return "currentReleaseIcon"
        }
    }
}

extension Release: Identifiable {
    var id: Int { build }
}
