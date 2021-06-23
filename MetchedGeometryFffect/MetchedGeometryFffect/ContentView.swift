//
//  ContentView.swift
//  MetchedGeometryFffect
//
//  Created by Thongchai Subsaidee on 24/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State var isShow: Bool = false
    @Namespace var namespace
    
    var body: some View {
        
        ZStack {
            if !isShow {
                ScrollView {
                    HStack {
                        VStack {
                            Text("Title")
                                .foregroundColor(.white)
                                .matchedGeometryEffect(id: "title", in: namespace)
                                .frame(width: 100, height: 100)
                                .background(
                                    Rectangle()
                                        .matchedGeometryEffect(id: "shape", in: namespace)
                                )
                        }
                        Rectangle()
                            .frame(width: 100, height: 100)
                        
                        Spacer()
                    }
                }
                
                
            }else {
                VStack {
                    Text("Title")
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, maxHeight: 400)
                        .background(
                            Rectangle()
                                .matchedGeometryEffect(id: "shape", in: namespace)
                        )
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                isShow.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
