//
//  ViewController.swift
//  DropDown
//
//  Created by Kelvin Tan on 12/23/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleStackView: UIStackView!
    @IBOutlet weak var descriptionStackview: UIStackView!
    @IBOutlet weak var dropDownButton: UIButton!
    var showDescription = false

    override func viewDidLoad() {
        super.viewDidLoad()
        dropDownButton.isHidden = false
    }

    @IBAction func dropDownTapped(_ sender: UIButton) {
        showDescription = !showDescription

        UIView.animate(withDuration: 0.3) {
            self.descriptionStackview.isHidden = !self.showDescription
            self.dropDownButton.setImage(UIImage(named: !self.showDescription ? "dropdown" : "dropup"), for: .normal)
        }
    }
}

