//
//  CircleImage.swift
//  DnD Roller
//
//  Created by airMac on 2019-11-02.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("forest-road-preview")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)

                }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
