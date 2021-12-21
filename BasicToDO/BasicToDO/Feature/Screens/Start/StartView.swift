    //
    //  StartView.swift
    //  BasicToDO
    //
    //  Created by mehmet karanlık on 20.12.2021.
    //

import SwiftUI

struct StartView: View {
    @State var isAnimating : Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                buildGreetingText()
                    .position(x: UIScreen.main.bounds.width/2, y: isAnimating ?  50  : 0)
                   
                Spacer()
                AppIconView()
                    .position(x: isAnimating ? 175 : 0 , y : UIScreen.main.bounds.height/11)
                Spacer()
                NavigationLink(destination:HomeView()) {
                    LoginButtonView()
                        .position(x: UIScreen.main.bounds.width/2, y: isAnimating ?  75  : 500)
                }

                
                Spacer()
                  
                    
            }
            .onAppear {
                withAnimation(Animation.easeInOut(duration: 2), {
                    isAnimating = true
                })
        }
        }
    }






    fileprivate func buildGreetingText() -> some View {
        return Text(StringConstants.instance.startingGreetingTextTR)
            .customFontModifier(enumVar:ApplicationConstants
                                    .FontFamily
                                    .ImperialScript_Regular, size: 40)
            
    }
    


}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .preferredColorScheme(.dark)
    }
}


