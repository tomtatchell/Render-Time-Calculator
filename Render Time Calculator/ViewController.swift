//
//  ViewController.swift
//  Render Time Calculator
//
//  Created by BBMP03 on 04/12/2015.
//  Copyright © 2015 tomtatchell. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var fTimeMin: NSTextField!
    @IBOutlet var fTimeSec: NSTextField!
    @IBOutlet var renderFrames: NSTextField!
    
    @IBOutlet var timeRemaining: NSTextField!
    
    @IBAction func calc(sender: NSButton) {
        
        let timeInSec = ((fTimeMin.integerValue * 60) + fTimeSec.integerValue)
        let totalTime = (timeInSec * renderFrames.integerValue)
        let totalSec = totalTime
        let totalMins = totalSec / 60
        let totalHrs = totalMins / 60

        /*
        if totalMins > 60 {
            
            timeRemaining.stringValue = ("Time Reamining: \(totalHrs) : \(totalMins - (totalHrs * 60)) : \(totalSec - (totalMins * 60))")
            
        } else {
            
            timeRemaining.stringValue = ("Time Remaining: \(totalMins) : \(totalSec - (totalMins * 60))")
            
        }
        */
        
        let printSec = totalSec - (totalMins * 60)
        let printMins = totalMins - (totalHrs * 60)
        let printHrs = totalHrs
        
        timeRemaining.stringValue = String(format: "Time Reamining: %02d:%02d:%02d", arguments: [printHrs, printMins, printSec])
        
        
        
    }

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

