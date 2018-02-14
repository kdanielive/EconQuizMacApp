//
//  QuizViewController.swift
//  EconMP2Project
//
//  Created by Daniel Kim on 12/6/17.
//  Copyright © 2017 Daniel Kim. All rights reserved.
//

import Cocoa

class QuizViewController: NSViewController {
    
    @IBOutlet weak var finishButton: NSButton!
    @IBOutlet weak var numberLabel: NSTextField!
    @IBOutlet weak var questionLabel: NSTextField!
    
    @IBOutlet weak var answerOneLabel: NSButton!
    @IBOutlet weak var answerTwoLabel: NSButton!
    @IBOutlet weak var answerThreeLabel: NSButton!
    @IBOutlet weak var answerFourLabel: NSButton!
    
    @IBOutlet weak var answerOneTitle: NSTextField!
    @IBOutlet weak var answerTwoTitle: NSTextField!
    @IBOutlet weak var answerThreeTitle: NSTextField!
    @IBOutlet weak var answerFourTitle: NSTextField!
    
    let data = Data()
    let defaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults()
        let num = defaults.integer(forKey: "qNum")
        if(num>7){
            finishButton.isHidden = false
        } else {
            finishButton.isHidden = true
        }
        numberLabel.stringValue = "\(num+1)"
        
        questionLabel.stringValue = data.qADict[num][0] as! String
        answerOneTitle.stringValue = data.qADict[num][1] as! String
        answerTwoTitle.stringValue = data.qADict[num][2] as! String
        answerThreeTitle.stringValue = data.qADict[num][3] as! String
        answerFourTitle.stringValue = data.qADict[num][4] as! String
        // Do view setup here.
    }
    @IBAction func buttonOnePressed(_ sender: Any) {
        let num = defaults.integer(forKey: "qNum")
        defaults.set(1, forKey: "useranswer\(num)")
    }
    @IBAction func buttonTwoPressed(_ sender: Any) {
        let num = defaults.integer(forKey: "qNum")
        defaults.set(2, forKey: "useranswer\(num)")
    }
    @IBAction func buttonThreePressed(_ sender: Any) {
        let num = defaults.integer(forKey: "qNum")
        defaults.set(3, forKey: "useranswer\(num)")
    }
    @IBAction func buttonFourPressed(_ sender: Any) {
        let num = defaults.integer(forKey: "qNum")
        defaults.set(4, forKey: "useranswer\(num)")
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        self.view.window?.close()
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if(segue.identifier?.rawValue == "backToQuiz") {
            let defaults = UserDefaults()
            let num = defaults.integer(forKey: "qNum")
            defaults.set(num+1, forKey:"qNum")
            self.view.window?.close()
        } else if(segue.identifier?.rawValue == "toFinish"){
            let defaults = UserDefaults()
            defaults.set(0, forKey:"qNum")
            self.view.window?.close()
        }
    }
}
