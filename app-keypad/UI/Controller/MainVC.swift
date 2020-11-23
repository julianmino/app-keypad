//
//  ViewController.swift
//  app-keypad
//
//  Created by Julian Mino on 26/09/2020.
//  Copyright © 2020 Julian Mino. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var seconds: Int?

    @IBOutlet weak var txtSeconds: UITextField!
    @IBOutlet weak var btnReady: PrimaryButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func txtSecondsHasAValue(_ sender: UITextField) {
        if !txtSeconds.text!.isEmpty {
            
            seconds = Int(txtSeconds.text!)
            btnReady.isEnabled = true
             btnReady.enableButton()
        } else {
            btnReady.isEnabled = false
            print("Anya")
            btnReady.enableButton()
        }
       
    }
    
    @IBAction func onReadyTapped(_ sender: Any) {
        performSegue(withIdentifier: "colorVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorVC = segue.destination as? ColorHackVC {
            colorVC.seconds = seconds
        }
    }
    
    
}

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

