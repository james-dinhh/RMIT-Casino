//
//  ContentView.swift
//  RMIT Casino
//
//  Created by Dinh Le Hong Tin on 22/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // MARK: - Background
            LinearGradient(gradient: Gradient(colors: [Color("ColorRedRMIT"),Color("ColorPurpleRMIT") ]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                // MARK: - Logo
                LogoView(logoFileName: "rmit-casino-welcome-logo")

                // MARK: - Score board
                HStack {
                    HStack {
                        Text("your \nmoney".uppercased())
                            .modifier(scoreLabelStyle())
                            .multilineTextAlignment(.leading)
                        
                        Text("100").modifier(scoreNumberStyle())
                    }
                    .modifier(scoreCapsuleStyle())
                    
                    Spacer()
                    
                    HStack {
                        Text("high \nscore".uppercased())
                            .modifier(scoreLabelStyle())
                            .multilineTextAlignment(.trailing)
                        
                        Text("100").modifier(scoreNumberStyle())
                    }
                    .modifier(scoreCapsuleStyle())
                }
                
                // MARK: - Slot Machine
                VStack {
                    // MARK: - first reel
                    ZStack {
                        Image("reel")
                            .resizable()
                            .modifier(ReelImageModifier())
                        Image("apple")
                            .resizable()
                            .modifier(IconImageModifier())
                    }
                    
                    HStack {
                        ZStack {
                            Image("reel").resizable()
                                .modifier(ReelImageModifier())
                            Image("apple").resizable()
                                .modifier(IconImageModifier())
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Image("reel").resizable()
                                .modifier(ReelImageModifier())
                            Image("apple").resizable()
                                .modifier(IconImageModifier())
                        }
                    }
                }
                

                
                
            
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
