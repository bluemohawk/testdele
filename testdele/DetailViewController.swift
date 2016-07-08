//
//  DetailViewController.swift
//  testdele
//
//  Created by FRANCOIS EVERHARD on 7/14/15.
//  Copyright © 2015 test. All rights reserved.
//

import UIKit

protocol WhoEverHearsMe {
    
    func hereIsAMessageForYou(aMessage:String)
}

class DetailViewController: UIViewController {

    var delegate:WhoEverHearsMe?
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }

    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    @IBAction func aButton(sender: AnyObject) {
        print("something1")

        if let delegate = self.delegate {
            print("something")
            delegate.hereIsAMessageForYou("Youhou BOOOOOOOO")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

