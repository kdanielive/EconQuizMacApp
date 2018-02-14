//
//  ReviewViewController.swift
//  EconMP2Project
//
//  Created by Daniel Kim on 12/7/17.
//  Copyright © 2017 Daniel Kim. All rights reserved.
//

import Cocoa

class ReviewViewController: NSViewController {
    
    @IBOutlet weak var numberLabel: NSTextField!
    @IBOutlet weak var questionLabel: NSTextField!
    @IBOutlet weak var answer1Label: NSTextField!
    @IBOutlet weak var answer2Label: NSTextField!
    @IBOutlet weak var answer3Label: NSTextField!
    @IBOutlet weak var answer4Label: NSTextField!
    @IBOutlet weak var exitButton: NSButton!
    @IBOutlet weak var nextButton: NSButton!
    
    let data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults()
        let num = defaults.integer(forKey: "qNum")
        if(num>7){
            exitButton.isHidden = false
        } else {
            exitButton.isHidden = true
        }
        numberLabel.stringValue = "\(num+1)"
        
        questionLabel.stringValue = data.qADict[num][0] as! String
        answer1Label.stringValue = data.qADict[num][1] as! String
        answer2Label.stringValue = data.qADict[num][2] as! String
        answer3Label.stringValue = data.qADict[num][3] as! String
        answer4Label.stringValue = data.qADict[num][4] as! String
        
        let answer = data.qADict[num][5] as! Int
        if(answer == 1) {   answer1Label.textColor = NSColor.blue    }
        else if(answer == 2) {   answer2Label.textColor = NSColor.blue   }
        else if(answer == 3) {   answer3Label.textColor = NSColor.blue    }
        else if(answer == 4) {   answer4Label.textColor = NSColor.blue    }

        // Do view setup here.
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if(segue.identifier?.rawValue == "backToReview") {
            let defaults = UserDefaults()
            let num = defaults.integer(forKey: "qNum")
            defaults.set(num+1, forKey:"qNum")
            self.view.window?.close()
        } else if(segue.identifier?.rawValue == "exit"){
            let defaults = UserDefaults()
            defaults.set(0, forKey:"qNum")
            self.view.window?.close()
        }
    }
}
