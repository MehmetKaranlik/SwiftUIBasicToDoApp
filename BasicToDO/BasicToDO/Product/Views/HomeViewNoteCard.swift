//
//  HomeViewNoteCard.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 21.12.2021.
//

import SwiftUI

struct HomeViewNoteCard: View {
    
    var todoText : String?
    var randomColor : Color?
 
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(randomColor)
                .overlay(alignment: .top) {
                    Text(todoText ?? "")
                        .customFontModifier(enumVar: ApplicationConstants.FontFamily.IBMPlexSans_Regular, size: 17.8)
                        .foregroundColor(ColorConstants.instance.colorWhite)
                        .padding()
                }
                
        }
    }
}

struct HomeViewNoteCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewNoteCard()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
