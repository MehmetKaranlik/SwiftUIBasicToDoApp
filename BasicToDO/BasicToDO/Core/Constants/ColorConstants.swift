//
//  ColorConstants.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 21.12.2021.
//

import Foundation
import SwiftUI

struct ColorConstants {
 static let instance = ColorConstants()
    
    
    
    let colorBlack : Color = .black
    let colorWhite : Color = .white
    let colorOrange : Color = .orange
    let colorPink : Color = .pink
    let colorPurple : Color = .purple
    let colorIndigo : Color = .indigo
    
    var buttonLinearGradientColor : [Color] {
        return [ColorConstants.instance.colorBlack,ColorConstants.instance.colorIndigo,ColorConstants.instance.colorPurple]
    }

    
    
    
}
