//
//  ContentView.swift
//  SwiftUI T25
//
//  Created by M Fadli Zein on 19/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !show{
                VStack{
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .matchedGeometryEffect(id: "shape", in:  namespace)
                            .frame(width: 44)
                        Text("Fever")
                            .matchedGeometryEffect(id: "text", in:  namespace)
                        Spacer()
                        Image(systemName: "play.fill")
                            .matchedGeometryEffect(id: "play", in:  namespace)
                            .font(.title)
                        Image(systemName: "forward.fill")
                            .matchedGeometryEffect(id: "forward", in:  namespace)
                            .font(.title)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 44)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.purple)
                        .matchedGeometryEffect(id: "background", in:  namespace)
                )
            } else{
                PlayView(namespace: namespace)
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .onTapGesture {
            withAnimation(.spring()){
                show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
