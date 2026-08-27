//
//  ChattingView.swift
//  FCStreaming
//
//  Created by joe on 8/27/26.
//

import UIKit

protocol ChattingViewDelegate: AnyObject {
    func liveChattingViewClassDidTap(_ chattingView: ChattingView)
}

class ChattingView: UIView {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func closeDidTap(_ sender: Any) {
        
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        
    }
}
