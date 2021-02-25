//
//  ViewController.swift
//  FireStoreDemo
//
//  Created by Daniel Helc on 2021-02-25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Setup the view
        let view = UIView()
        view.backgroundColor = .lightGray
        
        
        //setup the button
        let appMainButton = UIButton(type: .infoDark)
        appMainButton.frame = CGRect(x: 70, y: 200, width: 100, height: 50)
        appMainButton.setTitle("Click me", for: .normal)
        appMainButton.setTitle("Clicked", for: .highlighted)
        appMainButton.tintColor = UIColor.black
        appMainButton.setTitleColor(UIColor.red, for: .highlighted)
        appMainButton.backgroundColor = UIColor.clear
        appMainButton.layer.cornerRadius = 5
        appMainButton.layer.borderWidth = 2
        appMainButton.layer.borderColor = UIColor.black.cgColor
        //Set button action
        appMainButton.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        //Add button to the view
        view.addSubview(appMainButton)
        self.view = view
    }

    @objc func buttonAction(_ sender:UIButton!) {
        print("Button Clicked")
    }

}
