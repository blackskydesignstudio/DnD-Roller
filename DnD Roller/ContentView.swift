//
//  ContentView.swift
//  DnD Roller
//
//  Created by airMac on 2019-10-09.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let fire = Color(red: 173 / 255, green: 59 / 255, blue: 24  / 255)
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome to D&D Roller!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.orange)
                        HStack {
                            HStack {
                                Text("Version. 1.0")
                                    .font(.subheadline)
                            }
                            Spacer()
                            Text("BlackSky Design Studio")
                                .font(.subheadline)
                        }
                    }
                }
            }
            .padding()
            NavigationLink(destination: Creation1()){
                Text(/*@START_MENU_TOKEN@*/"Start Here!"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
        }
    .background(fire)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
