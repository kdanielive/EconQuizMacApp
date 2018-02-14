//
//  ViewController.swift
//  EconMP2Project
//
//  Created by Daniel Kim on 12/6/17.
//  Copyright © 2017 Daniel Kim. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.layer?.backgroundColor = CGColor.white
        
        UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

