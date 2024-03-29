//
//  ContentView.swift
//  Hiking
//
//  Created by Siddesh A on 14/05/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var hikes = Hike.all()
    
    var body: some View {
        
        
        
        NavigationView{
        List(self.hikes, id: \.name){
            hike in
            NavigationLink(
                destination:(HikeDetail(hike: hike))){
            HikeCell(hike: hike)
            }
        }
        .navigationBarTitle("Hikings")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        
        }
    }
}

struct HikeCell: View {
    
    let hike: Hike
    var body: some View {
        HStack{
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(16)
            VStack(alignment: .leading){
            Text(hike.name)
                Text(String(format: "%.2f" ,hike.miles)+" miles")
            }
        }
    }
}
