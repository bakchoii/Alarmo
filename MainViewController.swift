//
//  MainViewController.swift
//  Alarmo
//
//  Created by Patrick Zhong on 9/6/16.
//  Copyright © 2016 Patrick Zhong. All rights reserved.
//

import UIKit
import Foundation

class MainViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    let timeFormatter = NSDateFormatter()
    let dateFormatter = NSDateFormatter()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // setup the format of time and date
        timeFormatter.setLocalizedDateFormatFromTemplate("HH.mm")
        dateFormatter.dateFormat = "EEE  MM/dd"

        // updating the time for half sec
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(MainViewController.updateTime), userInfo: nil, repeats: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTime() {
        timeLabel.text = timeFormatter.stringFromDate(NSDate())
        dateLabel.text = dateFormatter.stringFromDate(NSDate())
    }
}
