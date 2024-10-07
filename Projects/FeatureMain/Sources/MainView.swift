//
//  MainView.swift
//  FeatureMain
//
//  Created by sandy on 10/4/24.
//

import SwiftUI
import UI

public struct MainView: View {
    private let rainbowColors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .red]
    
    @StateObject private var vm: MainVM = MainVM()
    @State private var duckpos: CGRect = .zero
    @State private var rotating = 0.0
    
    public init() {
        
    }
    
    public var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 0) {
//                Topbar("Animal Picker", backgroundColor: Color.clear)
                ZStack(alignment: .bottom, content: {
                    VStack(alignment: .leading, spacing: 14) {
//                        ZStack(alignment: .center, content: {
//                            Image("ButtonText_Large_Square_Orange")
//                                .resizable()
//                                .frame(height: 48, alignment: .center)
//                            
//                            Text("Multi Game")
//                                .font(.kr20b)
//                                .foregroundStyle(Color.white)
//                                .zIndex(1)
//                        })
//                        .contentShape(Rectangle())
//                        .paddingTop(30)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Play")
                                .font(.kr20b)
                                .foregroundStyle(Color.white)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 12.0)
                                        .foregroundStyle(Color.orange)
                                        .frame(height: 50.0, alignment: .center)
                                        .border(Color.white, lineWidth: 3, cornerRadius: 12.0)
                                )
                        })
                        .contentShape(Rectangle())
                        .paddingTop(40)
                        Spacer()
                    }
                    .paddingHorizontal(20)
                    .frame(width: geometry.size.width, alignment: .leading)
                    .zIndex(3)
                    drawBackground()
                })
            }
            .frame(width: geometry.size.width, alignment: .center)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: rainbowColors), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
    
    private func drawBackground() -> some View {
        ZStack(alignment: .bottom, content: {
            FeatureMainAsset.dog.image.image()
                .resizable()
                .scaledToFit()
                .frame(width: 180)
                .offset(x: 150, y: -180.0)
            
            FeatureMainAsset.lizard.image.image()
                .resizable()
                .scaledToFit()
                .frame(width: 210)
                .offset(x: -80.0, y: -220.0)
            
            
            FeatureMainAsset.fox.image.image()
                .resizable()
                .scaledToFit()
                .frame(width: 230)
                .rotationEffect(.degrees(rotating))
                .onAppear {
                    withAnimation(.linear(duration: 1)
                        .speed(0.15).repeatForever(autoreverses: false)) {
                            rotating = 360.0
                        }
                }
                .offset(x: -140, y: -5.0)
            
            FeatureMainAsset.duck.image.image()
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .offset(x: -40.0, y: -60.0)
                .rectReader($duckpos, in: .global)
            
            ZStack(alignment: .top, content: {
                FeatureMainAsset.speechBubble.image.image()
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .zIndex(1)
                Text("find M\ne!")
                    .font(.kr22m)
                    .zIndex(2)
                    .paddingTop(11)
            })
            .offset(x: ($duckpos.wrappedValue.minX) - 60, y: -($duckpos.wrappedValue.size.height))
            
            FeatureMainAsset.bonobono.image.image()
                .resizable()
                .scaledToFit()
                .frame(width: 210)
                .offset(x: 130, y: 5.0)
        })
        .offset(x: 0.0, y: 30.0)
    }
}

