//
//  SheetView.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 21.12.2021.
//

import SwiftUI

struct SheetView: View {
    var randomColor : Color
    var sheetText: String
    var body: some View {
        VStack {
            Text("Edit Your TODO")
                .customFontModifier(enumVar: ApplicationConstants.FontFamily.ImperialScript_Regular, size: 40)
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 300, height: 600, alignment: .center)
                .foregroundColor(randomColor)
                .overlay(alignment: .topLeading) {
                    Text(sheetText).padding()
                        
                }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(randomColor: .pink, sheetText: "Hello")
    }
}
