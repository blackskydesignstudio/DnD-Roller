//
//  PageCharacter1.swift
//  DnD Roller
//
//  Created by airMac on 2019-11-17.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import SwiftUI

struct PageCharacter1: View {
    
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
    
    struct ButtonTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(.title)
                .foregroundColor(Color.black)
        }
    }
    
    let fire = Color(red: 173 / 255, green: 59 / 255, blue: 24  / 255)
    
    var body: some View {
        VStack {
            Group {
            VStack {
                VStack {
                    Text("Your name")
                }
                .font(Font.custom("Arial Rounded MT Bold", size: 32))
                .foregroundColor(Color.white)
                .modifier(ShadowStyle())
                .padding(.bottom, 25)
                    
                HStack {
                    VStack(alignment: .leading) {
                    Text("Strength: ")
                    Text("Dexterity: ")
                    Text("Constitution: ")
                    Text("Intelligence: ")
                    Text("Wisdom: ")
                    Text("Charisma: ")
                    }
                    .modifier(StatTextStyle())
                    .padding(.trailing)
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("HP: ")
                        Text("AC: ")
                        Text("Inspiration: ")
                    }
                    .modifier(StatTextStyle())
                    .padding(.trailing)
                    Spacer()
                }
                    
                VStack {
                    Image("wood-elf")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                   
                }
                .padding(.top)
                
                Spacer()
                
                VStack{
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Button?")
                            .modifier(ButtonTextStyle())
                        }
                        .background(Image("Button"))
                        
                        Spacer()
                        
                        NavigationLink(destination: PageCharacter2()) {
                            Text("Details")
                            .modifier(ButtonTextStyle())
                        }
                        .background(Image("Button"))
                    }
                    .padding(.all)
                }

            }
        }
        .navigationBarTitle("Your Character")
        .padding(.all)
            .background(fire)
        }
    }
}

struct PageCharacter1_Previews: PreviewProvider {
    static var previews: some View {
        PageCharacter1()
    }
}
