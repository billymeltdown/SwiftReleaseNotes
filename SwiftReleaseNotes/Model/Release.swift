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
    
    var link: URL? {
        if (blogURL != nil) {
            return URL(string: blogURL!)
        } else {
            return nil
        }
    }
    
    static let isoDateFormatter: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        return formatter
    }()
    
    var releaseDate: Date? {
        return Self.isoDateFormatter.date(from: date)
    }
}

extension Release: Identifiable {
    var id: Int { build }
}
