//
//  SupportUsViewController.swift
//  Millennium
//
//  Created by Daniel Earl on 17/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit
import StoreKit

class SupportUsViewController: UIViewController {

    @IBOutlet weak var ProductTitle: UILabel!
    @IBOutlet weak var ProductDetail: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    @IBOutlet weak var ProductPurchaseBtn: UIButton!
    @IBOutlet weak var IAPLoadingView: UIView!
    
    let kTipCount = "countOfTipsGiven"
    let tipLimit = 3
    var products = [SKProduct]()
    
    // MARK: - Functions
    func getNumberOfTipsGiven() -> Int {
        let userDefaults: UserDefaults = UserDefaults.standard
        return userDefaults.integer(forKey: kTipCount)
    }
    
    func updateNumberOfTipsGiven() {
        let userDefaults: UserDefaults = UserDefaults.standard
        let count = userDefaults.integer(forKey: kTipCount)
        let update = count + 1
        userDefaults.set(update, forKey: kTipCount)
        
        if update >= tipLimit {
            ProductPurchaseBtn.isEnabled = false
        }
        
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToAbout", sender: self)
    }
    
    /*
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
