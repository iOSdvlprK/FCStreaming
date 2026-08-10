//
//  VideoListItem.swift
//  FCStreaming
//
//  Created by joe on 8/10/26.
//

import Foundation

struct VideoListItem: Decodable {
    let imageUrl: URL
    let title: String
    let playtime: Double
    let channel: String
    let videoId: Int
}
