//
//  ViewController.swift
//  app-keypad
//
//  Created by Julian Mino on 26/09/2020.
//  Copyright © 2020 Julian Mino. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITextFieldDelegate{
    
    var seconds: Int = 0

    @IBOutlet weak var txtSeconds: UITextField!
    @IBOutlet weak var btnReady: PrimaryButton!
    private var presenter = MainPresenter<MainVC>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtSeconds.delegate = self
        hideKeyboardWhenTappedAround()
    }

    @IBAction func onReadyTapped(_ sender: Any) {
        performSegue(withIdentifier: "colorVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorVC = segue.destination as? ColorVC {
            colorVC.seconds = seconds
        }
    }
    
//MARK: - TextFieldDelegate
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if let text = txtSeconds.text {
            seconds = Int(text) ?? 0
            btnReady.enableButton(true)
        } else {
            btnReady.enableButton(false)
        }
        return true
    }
}

//MARK: - PresenterDelegate

extension MainVC: MainPresenterDelegate {
    func showLoadingView() {
        
    }
    
    func hideLoadingView() {
        
    }
    
    func onError(_ message: String) {
        
    }
}

//MARK: - HideKeyboard Extension

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
