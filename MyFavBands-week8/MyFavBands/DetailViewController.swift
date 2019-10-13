//
//  DetailViewController.swift
//  MyFavBands
//
//  Created by Charles Konkol on 9/15/19.
//  Copyright © 2019 Charles Konkol. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    //********1) Remove label from DetailViewController
    //            -  add an ImageView
    //            -  create outlet of imageview and name productImageView

        //********2) Comment out (1) line below
//    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var productImageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
            //********3) Update (6) lines of code below
            if let photo = productImageView {
                photo.image = UIImage(named:detailItem!)
            }
        }else{
            productImageView.image = UIImage(named:"tofu.HEIC")
            title = "My Foods"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    //********4) Update next line of code below
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

