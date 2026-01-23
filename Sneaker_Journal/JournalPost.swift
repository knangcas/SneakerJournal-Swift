//
//  JournalPost.swift
//  Sneaker_Journal
//
//  Created by Kevin Nangcas on 1/23/26.
//

import SwiftUI

struct JournalPost: View {
    var body: some View {
        //not sure if this will be an asyncimage yet
        //placeholder for now
        
        
        
        GeometryReader { geo in
            VStack (alignment:.leading){
                Text("February 10th, 2026")
                    .padding(.horizontal)
                    
                Text("Air Jordan 3 \"Black Cement\"")
                    .padding(.horizontal)
                    .font(.title2)
                    .fontWeight(.bold)
                Image(.samplephoto)
                    .resizable()
                    .scaledToFit()
                
                Text("Errands in my Black Cements!")
                    .font(.subheadline)
                    .padding(.horizontal)
            }.frame(width:geo.size.width, height: geo.size.height * 0.8)
        }
       
    }
}

#Preview {
    JournalPost()
}
