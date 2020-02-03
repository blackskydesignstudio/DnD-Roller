//
//  PageCharacter2.swift
//  DnD Roller
//
//  Created by airMac on 2019-11-19.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import SwiftUI

struct PageCharacter2: View {
    
    struct StatTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 22))
                .modifier(ShadowStyle())
                .foregroundColor(Color.white)
        }
    }
    
    struct ShadowStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                    .shadow(color: Color.black, radius: 3, x: 2, y: 2)
            }
        }
    
    let fire = Color(red: 173 / 255, green: 59 / 255, blue: 24  / 255)

    var body: some View {
        VStack {
            
            HStack(alignment: .top) {
                Image("wood-elf_profile")
                    .frame(width: 125.0, height: 125.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .padding(.trailing)
                
                VStack(alignment: .leading) {
                    Text("Your Name")
                    Text("Race")
                    Text("Class")
                    Text("Level: 1")
                    Text("Alignment")
                    
                }.modifier(StatTextStyle())
            }
            
            Spacer()
            
            VStack {
                Text("this is a vstack")
            }
            
//            TabView {
//                PageCharacter1()
//                    .tabItem {
//                        Image(systemName: "1.circle")
//                        Text("1")
//                }.tag(0)
//                Text("Second")
//                    .tabItem {
//                        Image(systemName: "2.circle")
//                        Text("Second")
//                }.tag(1)
//            }
            
        }
        .navigationBarTitle("Your Details")
        .padding(.all)
    .background(fire)
    }
}

struct PageCharacter2_Previews: PreviewProvider {
    static var previews: some View {
        PageCharacter2()
    }
}
