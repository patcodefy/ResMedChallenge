//
//  UIViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import UIKit.UIViewController

extension UIViewController {

// Creates and presents an alert with a title, description, and single button
    func simpleAlert(title: String, description: String, buttonText: String) {
        let alert = UIAlertController(title: title, message: description, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonText, style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
