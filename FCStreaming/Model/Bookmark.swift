//
//  Bookmark.swift
//  FCStreaming
//
//  Created by joe on 8/10/26.
//

import Foundation

struct Bookmark: Decodable {
    let channels: [Item]
}

extension Bookmark {
    struct Item: Decodable {
        let channel: String
        let channelId: Int
        let thumbnail: URL
    }
}
