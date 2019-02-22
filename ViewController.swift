//
//  ViewController.swift
//  Millennium
//
//  Created by Daniel Earl on 13/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds
import StoreKit

class ViewController: UIViewController {

    @IBOutlet weak var AdViewHomePage: GADBannerView!
    let kReviewed = "hasReviewed"
    
    func fireUserReviewRequest() {
        let kBuildVersion = "buildVersion"
        let userDefaults: UserDefaults = UserDefaults.standard
        let infoDictionaryKey = kCFBundleVersionKey as String
        guard let getCurrentVersion = Bundle.main.object(forInfoDictionaryKey: infoDictionaryKey) as? String
            else { fatalError("Expected to find a bundle version in the info dictionary") }
        let currentVersion = Int(getCurrentVersion)
        let lastVersionPromptedForReview = userDefaults.integer(forKey: kBuildVersion)
        if currentVersion != lastVersionPromptedForReview {
            SKStoreReviewController.requestReview()
            userDefaults.set(currentVersion, forKey: kBuildVersion)
            userDefaults.set(2, forKey: kReviewed)
            userDefaults.synchronize()
        }
    }
    
    func getReview() {
        let kLaunchCount = "launchCounter"
        let userDefaults: UserDefaults = UserDefaults.standard
        let count = userDefaults.integer(forKey: kLaunchCount)
        if count > 9 {
            let review = userDefaults.integer(forKey: kReviewed)
            if review != 2 {
                fireUserReviewRequest()
            }
        }
    }
    
    override func viewDidLoad() {
        AdViewHomePage.adUnitID = "ca-app-pub-1798485712270431/7408911492" 
        AdViewHomePage.rootViewController = self
        AdViewHomePage.load(GADRequest())
        super.viewDidLoad()
        getReview()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
