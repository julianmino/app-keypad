//
//  File.swift
//  app-keypad
//
//  Created by Julian Mino on 28/09/2020.
//  Copyright © 2020 Julian Mino. All rights reserved.
//

import Foundation
import UIKit

class ColorPattern {
    var givenColor: UIColor;
    var givenPattern: Int;
    
    var MonochromaticColors = [UIColor] (arrayLiteral:  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    var PrimaryColors = [UIColor] (arrayLiteral:#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), #colorLiteral(red: 1, green: 0.7309094181, blue: 0.2134744448, alpha: 1))
    var SecondaryColors = [UIColor] (arrayLiteral:  #colorLiteral(red: 0.56461375, green: 0.3579149257, blue: 1, alpha: 1), #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 1, green: 0.4478302181, blue: 0, alpha: 1))
    var TernaryColors = [UIColor] (arrayLiteral: #colorLiteral(red: 0.6684747409, green: 0.3059771337, blue: 0.07507286317, alpha: 1))
    var LightPrimaryColors = [UIColor] (arrayLiteral: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 1, green: 0.9361814903, blue: 0.5503817091, alpha: 1))
    var LightSecondaryColors = [UIColor] (arrayLiteral:  #colorLiteral(red: 0.7420970222, green: 0.6448468121, blue: 1, alpha: 1), #colorLiteral(red: 0.8160882501, green: 1, blue: 0.6776908007, alpha: 1), #colorLiteral(red: 1, green: 0.6803214661, blue: 0.4385873872, alpha: 1))
    var LightTernaryColors = [UIColor] (arrayLiteral: #colorLiteral(red: 0.8806873381, green: 0.5515123907, blue: 0.4134968117, alpha: 1))
    
    init(color: UIColor, pattern: Int) {
        givenColor = color
        givenPattern = pattern
    }
}
