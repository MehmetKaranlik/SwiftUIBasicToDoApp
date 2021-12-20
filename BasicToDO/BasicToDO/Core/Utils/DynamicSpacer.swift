//
//  DynamicSpacer.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 20.12.2021.
//

import SwiftUI

struct DynamicSpacer: View {
    var space : CGFloat?
    var body: some View {
        return Spacer()
                .frame(width: space ?? 20, height: space ?? 20)
    }
}

struct DynamicSpacer_Previews: PreviewProvider {
    static var previews: some View {
        DynamicSpacer()
    }
}
