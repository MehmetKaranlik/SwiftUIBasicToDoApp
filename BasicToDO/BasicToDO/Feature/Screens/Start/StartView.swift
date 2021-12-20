//
//  StartView.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 20.12.2021.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .customFontModifier(enumVar: ApplicationConstants.FontFamily.ImperialScript_Regular, size: 20)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
