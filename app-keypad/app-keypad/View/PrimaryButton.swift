//
//  PrimaryButton.swift
//  app-keypad
//
//  Created by Julian Mino on 26/09/2020.
//  Copyright © 2020 Julian Mino. All rights reserved.
//

import UIKit

@IBDesignable class PrimaryButton: UIButton {

    
    override func prepareForInterfaceBuilder() {
        customDesign()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customDesign()
    }

    func customDesign() {
        enableButton()
        
        layer.borderColor = #colorLiteral(red: 0.41387007, green: 0.4458185844, blue: 0.4938325578, alpha: 1)
        layer.borderWidth = 2.0
        layer.opacity = 1
        layer.cornerRadius = 5.0
        
        setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        titleLabel?.textAlignment = .center
        
        
    }

    func enableButton() {
        if isEnabled {
            layer.backgroundColor = #colorLiteral(red: 0.05843322724, green: 0.08758834749, blue: 0.1923964024, alpha: 1)
        } else {
            layer.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        }
    }
    
}
