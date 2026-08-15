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
    
    private var contentSizeObservation: NSKeyValueObservation?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.modalPresentationStyle = .fullScreen
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.modalPresentationStyle = .fullScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.channelThumnailImageView.layer.cornerRadius = 14
        self.setupRecommendTableView()
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
        let moreVC = MoreViewController()
        self.present(moreVC, animated: false)
    }
    @IBAction func playDidTap(_ sender: Any) {
    }
    @IBAction func closeDidTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
    @IBAction func rewindDidTap(_ sender: Any) {
    }
}

extension VideoViewController: UITableViewDelegate, UITableViewDataSource {
    private func setupRecommendTableView() {
        self.recommendTableView.delegate = self
        self.recommendTableView.dataSource = self
        self.recommendTableView.rowHeight = VideoListItemCell.height
        self.recommendTableView.register(UINib(nibName: VideoListItemCell.identifier, bundle: nil), forCellReuseIdentifier: VideoListItemCell.identifier)
        
        self.contentSizeObservation = self.recommendTableView.observe(
            \.contentSize,
             changeHandler: { [weak self] tableView, _ in
                 self?.tableViewHeightConstraint.constant = tableView.contentSize.height
             }
        )
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: VideoListItemCell.identifier, for: indexPath)
        
        return cell
    }
}
