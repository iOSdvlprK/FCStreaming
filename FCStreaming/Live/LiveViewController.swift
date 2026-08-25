//
//  LiveViewController.swift
//  FCStreaming
//
//  Created by joe on 8/24/26.
//

import UIKit

class LiveViewController: UIViewController {
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var startTimeButton: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var containerView: UIView!
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { .portrait }
    override var preferredStatusBarStyle: UIStatusBarStyle { .lightContent }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.containerView.layer.cornerRadius = 15
        self.containerView.layer.borderColor = UIColor(named: "gray-2")?.cgColor
        self.containerView.layer.borderWidth = 1
        
        self.setupCollectionView()
    }
    
    @IBAction func sortDidTap(_ sender: UIButton) {
        guard sender.isSelected == false else {
            return
        }
        
        self.favoriteButton.isSelected = sender == self.favoriteButton
        self.startTimeButton.isSelected = sender == self.startTimeButton
    }
    
    private func setupCollectionView() {
        self.collectionView.register(
            UINib(nibName: LiveCell.identifier, bundle: nil),
            forCellWithReuseIdentifier: LiveCell.identifier
        )
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
}

extension LiveViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: LiveCell.height)
    }
}

extension LiveViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LiveCell.identifier, for: indexPath)
        
        return cell
    }
}
