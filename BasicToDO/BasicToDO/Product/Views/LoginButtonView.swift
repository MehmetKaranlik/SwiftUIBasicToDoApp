    //
    //  LoginButtonView.swift
    //  BasicToDO
    //
    //  Created by mehmet karanlık on 21.12.2021.
    //

import SwiftUI

struct LoginButtonView: View {
    var function : CGFunction?
    var body: some View {
        Button {
            print("hello")
        } label: {
            buildButtonLabelText()
            
        }
    }
    
    
    fileprivate func buildButtonLabelText() -> some View {
        return Text(StringConstants.instance.startingButtonTextTR)
            .customFontModifier(enumVar: ApplicationConstants.FontFamily.IBMPlexSans_Bold, size: 20)
            .padding(EdgeInsets(top: 15, leading: 50, bottom: 15, trailing: 50))
            .foregroundColor(ColorConstants.instance.colorWhite)
            .background(LinearGradient(colors: ColorConstants.instance.buttonLinearGradientColor, startPoint: .bottomLeading, endPoint: .center))
            .clipShape(RoundedRectangle(cornerRadius: .infinity))
    }
    
    
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView()
            .previewLayout(.sizeThatFits)
    }
}
