//
//  ViewController.swift
//  topTabBar
//
//  Created by Ragaie :+ on 8/27/17.
//  Copyright © 2017 Ragaie alfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,TopTabBarDelegate{
    func topTabBarSelected(index: Int) {
        
        print("Index \(index) had been selected")
    }
    
    @IBOutlet weak var thirdBar: TopTabBar!
    
    @IBOutlet weak var ToptabBarOutlet: TopTabBar!
    
    @IBOutlet weak var secandTabBar: TopTabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       ToptabBarOutlet.buttonTitle = ["home","info","gallary gdfmdnfjs  dkgkd","menu"]
       // ToptabBarOutlet.font = UIFont.boldSystemFont(ofSize: 16)
       // secandTabBar.font = UIFont.boldSystemFont(ofSize: 16)
        secandTabBar.buttonTitle = ["Dining","Shopping","Night Life","Health","Sport","Travel"]
        
        thirdBar.font = UIFont.systemFont(ofSize: 14)
        thirdBar.selectedFont = UIFont.boldSystemFont(ofSize: 16)

        thirdBar.buttonTitle = ["Dining","Shopping","Night Life","Health","Sport","Travel"]
        ToptabBarOutlet.delegate = self

      //  thirdBar.buttonImges = [UIImage.init(named: "Location"),UIImage.init(named: "Location"),UIImage.init(named: "Location"),UIImage.init(named: "Location")] as! [UIImage]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectindex(_ sender: Any) {
       // ToptabBarOutlet.selectitemAt(index: 2)
        var phone : String? = "+420733454524"
        guard let url = URL(string: "tel://\(phone ?? "")") else {
        return //be safe
        }

        if #available(iOS 10.0, *) {
        UIApplication.shared.open(url)
        } else {
        UIApplication.shared.openURL(url)
        }

    }
    
}

