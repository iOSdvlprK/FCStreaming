//
//  DateComponentsFormatterExtension.swift
//  FCStreaming
//
//  Created by joe on 8/22/26.
//

import Foundation

extension DateComponentsFormatter {
    static let playTimeFormatter: DateComponentsFormatter = {
       let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        formatter.allowedUnits = [.minute, .second]
        
        return formatter
    }()
}
