    //
    //  AppConstants.swift
    //  BasicToDO
    //
    //  Created by mehmet karanlık on 20.12.2021.
    //

import Foundation
struct ApplicationConstants {
    static let instance  = ApplicationConstants()
        

    enum FontFamily {
        case IBMPlexSans_Bold
        case IBMPlexSans_BoldItalic
        case IBMPlexSans_Light
        case IBMPlexSans_LightItalic
        case IBMPlexSans_Medium
        case IBMPlexSans_MediumItalic
        case IBMPlexSans_Regular
        case IBMPlexSans_SemiBold
        case IBMPlexSans_SemiBoldItalic
        case ImperialScript_Regular
    }
    
    func getFont(name:FontFamily) -> String {
        switch name {
        case .IBMPlexSans_Bold:
            return "IBMPlexSans-Bold"
        case .IBMPlexSans_BoldItalic:
            return "IBMPlexSans-BoldItalic"
        case .IBMPlexSans_Light:
            return "IBMPlexSans-Light"
        case .IBMPlexSans_LightItalic:
            return "IBMPlexSans-LightItalic"
        case .IBMPlexSans_Medium:
            return "IBMPlexSans-Medium"
        case .IBMPlexSans_MediumItalic:
            return "IBMPlexSans-MediumItalic"
        case .IBMPlexSans_Regular:
            return "IBMPlexSans-Regular"
        case .IBMPlexSans_SemiBold:
            return "IBMPlexSans-SemiBold"
        case .IBMPlexSans_SemiBoldItalic:
            return "IBMPlexSans-SemiBoldItalic"
        case .ImperialScript_Regular:
            return "ImperialScript-Regular"
            
        }
    }
   
    
    
}













