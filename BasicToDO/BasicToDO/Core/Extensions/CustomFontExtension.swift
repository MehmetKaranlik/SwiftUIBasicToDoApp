    //
    //  File.swift
    //  BasicToDO
    //
    //  Created by mehmet karanlık on 21.12.2021.
    //

import Foundation
import SwiftUI

extension Text {
    func customFontModifier(enumVar:ApplicationConstants.FontFamily , size : Double) -> some View {
        self
            .font(Font
                    .custom(ApplicationConstants.instance.getFont(name: enumVar), size: size))
        
    }
}




