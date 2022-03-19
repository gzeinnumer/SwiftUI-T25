//
//  PlayView.swift
//  SwiftUI T25
//
//  Created by M Fadli Zein on 19/03/22.
//

import SwiftUI

struct PlayView: View {
    var namespace : Namespace.ID
    var body: some View {
        VStack(spacing: 20){
            RoundedRectangle(cornerRadius: 30)
                .matchedGeometryEffect(id: "shape", in: namespace)
                .frame(height: 300)
                .padding()
            
            Text("Fever")
                .matchedGeometryEffect(id: "text", in:  namespace)
            HStack{
                Image(systemName: "play.fill")
                    .matchedGeometryEffect(id: "play", in:  namespace)
                    .font(.title)
                Image(systemName: "forward.fill")
                    .matchedGeometryEffect(id: "forward", in:  namespace)
                    .font(.title)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(.purple)
                .matchedGeometryEffect(id: "background", in:  namespace)
        )
        .ignoresSafeArea()
    }
}

struct PlayView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        PlayView(namespace: namespace)
    }
}
