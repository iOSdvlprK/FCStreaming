//
//  VideoViewController.swift
//  FCStreaming
//
//  Created by joe on 8/13/26.
//

import UIKit

class VideoViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var updateDateLabel: UILabel!
    @IBOutlet weak var playCountLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var channelThumnailImageView: UIImageView!
    @IBOutlet weak var channelNameLabel: UILabel!
    
    @IBOutlet weak var recommendTableView: UITableView!
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var portraitControlPannel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func commentDidTap(_ sender: Any) {
    }
}

extension VideoViewController {
    @IBAction func toggleControlPannel(_ sender: Any) {
    }
    @IBAction func fastForwardDidTap(_ sender: Any) {
    }
    @IBAction func expandDidTap(_ sender: Any) {
    }
    @IBAction func moreDidTap(_ sender: UIButton) {
    }
    @IBAction func playDidTap(_ sender: Any) {
    }
    @IBAction func closeDidTap(_ sender: Any) {
    }
    @IBAction func rewindDidTap(_ sender: Any) {
    }
}
