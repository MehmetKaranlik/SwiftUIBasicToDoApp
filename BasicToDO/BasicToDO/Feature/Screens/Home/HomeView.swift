//
//  HomeView.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 21.12.2021.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("userTodos") var userTodos : [String] = []
    @State private var isSheetShown : Bool = false;
     
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Todos")
                .customFontModifier(enumVar: ApplicationConstants.FontFamily.ImperialScript_Regular, size: 50)
                .foregroundColor(ColorConstants.instance.colorOrange)
                .padding(.leading,20)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(userTodos, id:\.self) { index in
                        Button {
                            isSheetShown = true
                        } label: {
                            HomeViewNoteCard(todoText: index, randomColor: buildRandomColor())
                        }
                        .sheet(isPresented: $isSheetShown, onDismiss: nil) {
                            SheetView(randomColor: buildRandomColor(), sheetText: index)
                            
                        }

                           
                            
                          
                    }
                    
                }
                .padding(.leading,20)
            }
          
            DynamicSpacer(space: 300)
          
        }
        .navigationBarHidden(true)
    }
    func buildRandomColor() -> Color {
       return Color(red: .random(in: 0.6...1), green: .random(in: 0.6...1), blue: .random(in: 0.6...1))
   }


}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.light)
    }
}
