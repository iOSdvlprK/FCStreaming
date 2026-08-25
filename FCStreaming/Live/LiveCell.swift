//
//  LiveCell.swift
//  FCStreaming
//
//  Created by joe on 8/25/26.
//

import UIKit

class LiveCell: UICollectionViewCell {
    static let height: CGFloat = 76
    static let identifier: String = "LiveCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var liveLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.liveLabel.layer.cornerRadius = 5
        self.liveLabel.clipsToBounds = true
        self.imageView.layer.cornerRadius = 5
    }

}
