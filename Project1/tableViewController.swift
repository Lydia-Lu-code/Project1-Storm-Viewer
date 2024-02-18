//
//  ViewController.swift
//  Project1
//
//  Created by Lydia Lu on 2024/2/18.
//

import UIKit

class tableViewController: UITableViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
       }
        print(pictures)
        
    }


}

