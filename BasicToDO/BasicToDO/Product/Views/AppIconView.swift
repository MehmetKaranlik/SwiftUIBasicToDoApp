//
//  AppIconView.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 21.12.2021.
//

import SwiftUI

struct AppIconView: View {
    var colors : [Color] = [ColorConstants.instance.colorPurple,
                            ColorConstants.instance.colorOrange,
                            ColorConstants.instance.colorPink]
    var body: some View {
        ZStack {
            ForEach(0 ..< colors.count) { item in
                RoundedRectangle(cornerRadius: 20)
                        .frame(width: 150, height: 150, alignment: .center)
                        .foregroundColor(colors[item])
                        .rotationEffect(Angle(degrees: Double(10*item)), anchor: .bottomLeading)
            }
        }
        .padding()
        .rotationEffect(Angle(degrees: -50))
    }
}

struct AppIconView_Previews: PreviewProvider {
    static var previews: some View {
        AppIconView()
    }
}
