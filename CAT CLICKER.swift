//
//  ContentView.swift
//  Swift Basics
//
//  Created by Elena Foong on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var money = 0
    var body: some View {
        ZStack{
            
            Image ("hell")
                .resizable()
                .aspectRatio(contentMode:.fill)
                .ignoresSafeArea()
            
        
            VStack{
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Image("coin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .padding()
                    
                    
                    
                    Text(String(money))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    money += 1
                }, label: {
                    Image("fattie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0, height: 300.0)
                    .padding()
                })
                
                Spacer()
                
                Text("Cat Clicker")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
