//
//  ViewController.swift
//  SegmentedControl2
//
//  Created by Arun Muthukumar on 15/02/21.
//  Copyright © 2021 Arun Muthukumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let displayColorName:UILabel = UILabel(frame: CGRect(x: 100, y: 300, width: 200, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColorControlSetup()
        displayColorSetup()
        
    }
    
    func changeColorControlSetup(){
        let colors = ["Red", "Blue", "Green" ,"Yellow"]
        let changeColorControl = UISegmentedControl(items: colors)
        changeColorControl.frame = CGRect(x: 10, y: 250, width: (self.view.frame.width - 20), height: 50)
        changeColorControl.addTarget(self, action: #selector(colorControl), for: .valueChanged)
        view.addSubview(changeColorControl)
    }
    
    func displayColorSetup()
    {
        view.addSubview(displayColorName)
        
    }
    
    @objc func colorControl(_ segmentedControl: UISegmentedControl) {
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            displayColorName.text = "This is red color"
//             displayColorSetup(labelText: "This is red color")
        case 1:
            displayColorName.text = "This is Blue color"
//             displayColorSetup(labelText: "This is Blue color")
        case 2:
            displayColorName.text = "This is green color"
//             displayColorSetup(labelText: "This is green color")
        default:
            displayColorName.text = "This is yellow color"
//             displayColorSetup(labelText: "This is yellow color")
    }
}
}

