//
//  InfoController.swift
//  Impact
//
//  Created by Connie Guan on 7/27/17.
//  Copyright © 2017 Connie Guan. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire
import SwiftyJSON

class InfoController: UIViewController{
    
    var org: OrganizationClass?
    var organizations = [OrganizationClass]()
    var filtered = [OrganizationClass]()
    
    
    @IBOutlet weak var donateButton: UIButton!
    @IBOutlet weak var websiteButton: UIButton!
    @IBOutlet weak var infoDescriptionLabel: UILabel!
    @IBOutlet weak var infoNameLabel: UILabel!
    @IBOutlet weak var infoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        websiteButton.titleLabel?.textAlignment = .center
        websiteButton.setTitle(org?.websiteUrl, for: .normal)
        infoNameLabel.text = org?.charityName
        infoDescriptionLabel.text = org?.description
        infoDescriptionLabel.lineBreakMode = .byWordWrapping
        infoDescriptionLabel.numberOfLines = 0
        
        let imageUrl = org?.imageUrl
        infoImageView.af_setImage(withURL: URL(string: imageUrl!)!)
    }
    
    
    @IBAction func donateButtonTapped(_ sender: UIButton) {
        let donate = org?.donationURL
        if let url = URL(string: donate!) {
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    @IBAction func websiteButtonTapped(_ sender: UIButton) {
        let website = org?.websiteUrl
        if let url = URL(string: website!) {
            UIApplication.shared.open(url, options: [:])
        }
    }
        

    
    

}

