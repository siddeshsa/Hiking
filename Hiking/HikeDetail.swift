//
//  HikeDetail.swift
//  Hiking
//
//  Created by Siddesh A on 14/05/21.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    @State private var zoomed: Bool = false
    
    
    var body: some View {
        VStack{
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                    self.zoomed.toggle()
                    }
                }
            Text(hike.name)
            Text(String(format: "%.2f",hike.miles)+" miles")
        }.navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angel landing", imageURL: "3", miles: 3.7))
    }
}
