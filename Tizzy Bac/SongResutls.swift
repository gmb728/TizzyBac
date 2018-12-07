//
//  SongResutls.swift
//  Tizzy Bac
//
//  Created by Chang Sophia on 12/7/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import Foundation

struct Song: Codable {
    var artistName: String
    var trackName: String
    var previewUrl: URL
    var artworkUrl100: URL
    var trackPrice: Double?
}

struct SongResults: Codable {
    
    var resultCount: Int
    var results: [Song]
}
