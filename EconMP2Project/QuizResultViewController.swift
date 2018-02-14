//
//  QuizResultViewController.swift
//  EconMP2Project
//
//  Created by Daniel Kim on 12/7/17.
//  Copyright © 2017 Daniel Kim. All rights reserved.
//

import Cocoa

class QuizResultViewController: NSViewController {

    @IBOutlet weak var result1: NSTextField!
    @IBOutlet weak var result2: NSTextField!
    @IBOutlet weak var result3: NSTextField!
    @IBOutlet weak var result4: NSTextField!
    @IBOutlet weak var result5: NSTextField!
    @IBOutlet weak var result6: NSTextField!
    @IBOutlet weak var result7: NSTextField!
    @IBOutlet weak var result8: NSTextField!
    @IBOutlet weak var result9: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults()
        defaults.removeObject(forKey: "qNum")
        let data = Data()
        
        let bool1 = defaults.integer(forKey: "useranswer0") == data.qADict[0][5] as! Int
        let bool2 = defaults.integer(forKey: "useranswer1") == data.qADict[1][5] as! Int
        let bool3 = defaults.integer(forKey: "useranswer2") == data.qADict[2][5] as! Int
        let bool4 = defaults.integer(forKey: "useranswer3") == data.qADict[3][5] as! Int
        let bool5 = defaults.integer(forKey: "useranswer4") == data.qADict[4][5] as! Int
        let bool6 = defaults.integer(forKey: "useranswer5") == data.qADict[5][5] as! Int
        let bool7 = defaults.integer(forKey: "useranswer6") == data.qADict[6][5] as! Int
        let bool8 = defaults.integer(forKey: "useranswer7") == data.qADict[7][5] as! Int
        let bool9 = defaults.integer(forKey: "useranswer8") == data.qADict[8][5] as! Int
        print(defaults.integer(forKey: "useranswer8"))
        print(data.qADict[8][5])

        if(bool1) { result1.stringValue = "1. Correct!" }
        else {  result1.stringValue = "1. Wrong :("  }
        if(bool2) { result2.stringValue = "2. Correct!" }
        else {  result2.stringValue = "2. Wrong :("  }
        if(bool3) { result3.stringValue = "3. Correct!" }
        else {  result3.stringValue = "3. Wrong :("  }
        if(bool4) { result4.stringValue = "4. Correct!" }
        else {  result4.stringValue = "4. Wrong :("  }
        if(bool5) { result5.stringValue = "5. Correct!" }
        else {  result5.stringValue = "5. Wrong :("  }
        if(bool6) { result6.stringValue = "6. Correct!" }
        else {  result6.stringValue = "6. Wrong :("  }
        if(bool7) { result7.stringValue = "7. Correct!" }
        else {  result7.stringValue = "7. Wrong :("  }
        if(bool8) { result8.stringValue = "8. Correct!" }
        else {  result8.stringValue = "8. Wrong :("  }
        if(bool9) { result9.stringValue = "9. Correct!" }
        else {  result9.stringValue = "9. Wrong :("  }

        
        // Do view setup here.
    }
    
}
