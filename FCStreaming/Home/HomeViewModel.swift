//
//  HomeViewModel.swift
//  FCStreaming
//
//  Created by joe on 7/31/26.
//

import Foundation

@MainActor class HomeViewModel {
    private(set) var home: Home?
    var dataChanged: (() -> Void)?
    
    func requestData() {
        Task {
            do {
                self.home = try await DataLoader.load(url: URLDefines.home, for: Home.self)
                self.dataChanged?()
            } catch {
                print("json parsing failed: \(error.localizedDescription)")
            }
        }
    }
}
