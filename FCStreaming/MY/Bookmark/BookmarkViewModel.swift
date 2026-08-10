//
//  BookmarkViewModel.swift
//  FCStreaming
//
//  Created by joe on 8/10/26.
//

import Foundation

@MainActor class BookmarkViewModel {
    private(set) var channels: [Bookmark.Item]?
    var dataChanged: (() -> Void)?
    
    func request() {
        Task {
            do {
                let data = try await DataLoader.load(url: URLDefines.bookmark, for: Bookmark.self)
                self.channels = data.channels
                self.dataChanged?()
            } catch {
                print("bookmark list load failed: \(error.localizedDescription)")
            }
        }
    }
}
