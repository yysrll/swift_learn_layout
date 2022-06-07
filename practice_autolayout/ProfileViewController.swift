//
//  ViewController.swift
//  practice_autolayout
//
//  Created by Yusril on 03/06/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var followButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
    }
    
    private var isFollow = false
    
    @IBAction func setFollowed(_ sender: Any) {
        isFollow = !isFollow
        followButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
    }
    
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
    }

}

