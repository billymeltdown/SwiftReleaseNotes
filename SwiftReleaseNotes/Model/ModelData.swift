//
//  ModelData.swift
//  ReleaseNotes
//
//  Created by William Gray on 3/2/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var releases: [Release] = load("ReleaseNotes.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let fileURL = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("The file \(filename) is not available in the main bundle")
    }
    
    do {
        data = try Data.init(contentsOf: fileURL)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
