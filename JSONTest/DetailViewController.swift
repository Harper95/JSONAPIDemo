//
//  DetailViewController.swift
//  JSONTest
//
//  Created by hollarab on 2/18/16.
//  Copyright © 2016 a. brooks hollar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()

        }
    }

    func configureView() {
        // Update the user interface for the detail item.
		guard let users = detailItem as? User where detailDescriptionLabel != nil else { return }
		var string = ""
		detailDescriptionLabel.numberOfLines = 0
		string += "\(users.name) \n"
		string += "\(users.phone) \n"
		string += "\(users.email) \n"
		string += "\(users.website)"
		detailDescriptionLabel.text? = string
	}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

