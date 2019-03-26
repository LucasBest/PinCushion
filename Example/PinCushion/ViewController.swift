//
//  ViewController.swift
//  PinCushion
//
//  Created by Lucas Best on 12/01/2017.
//  Copyright (c) 2017 Lucas Best. All rights reserved.
//

import UIKit
import PinCushion

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        PinCushion.debugOptions = .warnTranslatesAutoResizeMaskIntoConstraints

        let redView = UIView()
        redView.backgroundColor = UIColor.red

        redView.pin(.width, constant: 100.0)
        redView.pin(.height, constant: 100.0)

        self.view.addSubview(redView)

        redView.pin(.top, to: self.topLayoutGuide, .bottom, constant: 20.0)
        redView.pinInSuperview([.leading], constant: 15.0)

        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue

        self.view.addSubview(blueView)

        blueView.pin(.width, constant: 200.0)
        blueView.pin(.height, constant: 200.0)

        blueView.pin(.top, to: redView, .top)
        blueView.pin(.leading, to: redView, .trailing, constant: 30.0)

        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow

        self.view.addSubview(yellowView)

        yellowView.pin(.top, to: blueView, .bottom, constant: 25.0)
        yellowView.pin(.height, constant: 100.0)
        yellowView.pin(.leading, to: redView, .leading)
        yellowView.pin(.trailing, to: blueView, .trailing)

        let blackView = UIView()
        blackView.backgroundColor = UIColor.black

        self.view.addSubview(blackView)

        let constraints = blackView.pinInSuperview([.bottom], constant: 20.0)
        print("Visual Layout: V:[blackView]-(20)-|, Constraint:", constraints[.bottom] ?? "")

        blackView.pin(.width, constant: 200.0)
        blackView.pin(.height, constant: 100.0, priority: UILayoutPriority(rawValue: 999))
        blackView.pinInSuperview([.centerX])

        let greenView = UIView()
        greenView.backgroundColor = UIColor.green

        self.view.addSubview(greenView)

        self.view.pin(target: blackView, .top, to: greenView, .bottom, constant: 20.0)
        greenView.pinInSuperview([.leading, .trailing], constant: 50.0)
        greenView.pin(.height, constant: 50.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
