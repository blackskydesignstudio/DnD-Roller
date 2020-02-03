//
//  Creation1.swift
//  DnD Roller
//
//  Created by airMac on 2019-11-05.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import SwiftUI

struct Creation1: View {
    
    @State var strgStat = 0
    @State var dextStat = 0
    @State var consStat = 0
    @State var intlStat = 0
    @State var wisdStat = 0
    @State var charStat = 0
    @State var yourName: String = ""
    @State var selectedRace: String = ""
    
    var dd5thRaces = ["Human", "Orc", "Wood Elf", "Dragon"]
    let fire = Color(red: 173 / 255, green: 59 / 255, blue: 24  / 255)
    
    struct StatTextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 32))
                .modifier(ShadowStyle())
                .foregroundColor(Color.white)
        }
    }
    
    struct StatRollStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 36))
                .modifier(ShadowStyle())
                .foregroundColor(Color.orange)
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
                .font(.largeTitle)
                .foregroundColor(Color.black)
        }
    }
    
    
    var body: some View {
        Group {
            VStack {
                Text("Character Creation").modifier(StatTextStyle())
                Spacer()
                
                VStack {
                    //Title Bar
                    
                    VStack {
                    Text("Choose your name:").modifier(StatTextStyle())
                    TextField("Enter here...",text: $yourName)
                        .background(Color.white)
                        //.background(cornerRadius(5.0))
                        .padding(.all)
                        
//                        Text("Pick Your Race:").modifier(StatTextStyle())
//                        Picker(selection: $selectedRace, label: Text("Pick your race")
//                            .foregroundColor(Color.white)
//                            .font(Font.custom("Arial Rounded MT Bold", size: 16))
//                            .modifier(ShadowStyle())
//                        ) {
//                            ForEach(0 ..< dd5thRaces.count) {
//                                Text(self.dd5thRaces[$0])
//                            }
//                        }
//                    .pickerStyle(WheelPickerStyle())
//                    .background(Color.white)
                    }.padding(.top, 20)
                    Spacer()
                    
                    //Stats
                    HStack {
                        Text("Strength: ").modifier(StatTextStyle())
                        Text("\(strgStat)").modifier(StatRollStyle())
                    }
                    HStack {
                        Text("Dexterity: ").modifier(StatTextStyle())
                        Text("\(dextStat)").modifier(StatRollStyle())
                    }
                    HStack {
                        Text("Constitution: ").modifier(StatTextStyle())
                        Text("\(consStat)").modifier(StatRollStyle())
                    }
                    HStack {
                        Text("Intelligence: ").modifier(StatTextStyle())
                        Text("\(intlStat)").modifier(StatRollStyle())
                    }
                    HStack {
                        Text("Wisdom: ").modifier(StatTextStyle())
                        Text("\(wisdStat)").modifier(StatRollStyle())
                    }
                    HStack {
                        Text("Charisma: ").modifier(StatTextStyle())
                        Text("\(charStat)").modifier(StatRollStyle())
                    }

                        Spacer()
                    
                    //Roll Button
                    Button(action: {
                       // self.strgStat = self.statRolled()
//                        self.dextStat = self.statRolled()
//                        self.consStat = self.statRolled()
//                        self.intlStat = self.statRolled()
//                        self.wisdStat = self.statRolled()
//                        self.charStat = self.statRolled()
                    }) {
                        HStack{
                        Image("StartOverIcon")
                                Text("Roll!")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                    }
                    .background(Image("Button"))
                    .padding(.bottom, 20)
                    }
                
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Button?")
                        }
                        .background(Image("Button"))
                        
                        Spacer()
                        NavigationLink(destination: PageCharacter1()) {
                            Text("Save")
                            .modifier(ButtonTextStyle())
                        }
                        .background(Image("Button"))
                    }
                    .padding(.all)
            }
            .accentColor(Color.black)
        }
            .navigationBarTitle("D & D Roller")

    .background(fire)
    }
    
    func statRolled() -> Int {
        var tempRoll1 = Int.random(in: 1...6)
        var tempRoll2 = Int.random(in: 1...6)
        var tempRoll3 = Int.random(in: 1...6)
        var tempRoll4 = Int.random(in: 1...6)

        return tempRoll1 + tempRoll2 + tempRoll3 + tempRoll4
    }
}

struct Creation1_Previews: PreviewProvider {
    static var previews: some View {
        Creation1()
    }
}
