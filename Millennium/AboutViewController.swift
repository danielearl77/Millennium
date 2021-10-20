//
//  AboutViewController.swift
//  Millennium
//
//  Created by Daniel Earl on 17/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutTextBox: UITextView!
    
    override func viewDidLoad() {
        
        let versionNumber = Bundle.main.infoDictionary!["CFBundleShortVersionString"]!
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.dateFormat = "yyyy"
        let copyDate = dateFormatter.string(from: currentDate)
        
        let aboutText = "This app aims to provide travel information for fans travelling to events at the Millennium Stadium.\n\nHelp keep this app free by leaving us a digital tip - tap the Support Us button.\n\nAll directions given in this app are taken from either maps or personal experience.  Please contact us if you think the directions are wrong or can provide clearer routes to the stadium.\n\nThis app is not affiliated with the Millennium Stadium or the Welsh Rugby Union, and neither has provided any information for this app.  Stadium Infomation is linked from the www.wikipedia.org website.\n\nFor more information see our website www.phone-app.co.uk\n\nCopyright (c) \(copyDate) Daniel Earl.\nVersion: \(versionNumber)"
        
        aboutTextBox.text = aboutText
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    
    @IBAction func navBackToAbout( _ seg: UIStoryboardSegue) {
        //NSLog("Unwind")
    }
    
    /*
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
