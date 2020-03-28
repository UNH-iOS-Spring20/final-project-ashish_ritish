//
//  ListView.swift
//  MarketPlace
//
//  Created by Ashish Shrestha on 3/19/20.
//  Copyright © 2020 Ashish-Ritish. All rights reserved.
//

import SwiftUI

struct ListScreenView: View {
    @State var selectedTab = "favorite"
    
    var body: some View {
       NavigationView{
        GeometryReader{ geometry in
            VStack(){
                HStack{
                    VStack(spacing: 5){
                        Text("Favorite")
                        .font(.system(size: 18))
                        .foregroundColor(self.selectedTab == "favorite" ? .blue : .gray)
                        GeometryReader { g in
                            Rectangle()
                                .fill(self.selectedTab == "favorite" ? Color.blue : Color.clear)
                                .frame(width: g.size.width, height: 2)
                        }
                    }
                    .onTapGesture {
                            self.selectedTab = "favorite"
                    }
                    
                    VStack(spacing: 5){
                        Text("Selling")
                            .font(.system(size: 18))
                            .foregroundColor(self.selectedTab == "selling" ? .blue : .gray)
                        GeometryReader { g in
                            Rectangle()
                                .fill(self.selectedTab == "selling" ? Color.blue : Color.clear)
                                .frame(width: g.size.width, height: 2)
                        }
                    }
                    .onTapGesture {
                            self.selectedTab = "selling"
                    }
                    
                    VStack(spacing: 5){
                        Text("Sold")
                            .font(.system(size: 18))
                            .foregroundColor(self.selectedTab == "sold" ? .blue : .gray)
                        GeometryReader { g in
                            Rectangle()
                                .fill(self.selectedTab == "sold" ? Color.blue : Color.clear)
                                .frame(width: g.size.width, height: 2)
                        }
                    }
                    .onTapGesture {
                            self.selectedTab = "sold"
                    }
                    
                    VStack(spacing: 5){
                        Text("Bought")
                            .font(.system(size: 18))
                            .foregroundColor(self.selectedTab == "bought" ? .blue : .gray)
                        GeometryReader { g in
                            Rectangle()
                                .fill(self.selectedTab == "bought" ? Color.blue : Color.clear)
                                .frame(width: g.size.width, height: 2)
                        }
                    }
                    .onTapGesture {
                            self.selectedTab = "bought"
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height/15)
                .background(Color.white)
                .padding(.top, 10)
                VStack{
                    HStack{
                        
                        Text(self.selectedTab)                    }
                }
                Spacer()
            }
        }
       .navigationBarTitle(Text("Listing"), displayMode: .inline)
        }
    }
}

struct ListScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ListScreenView()
    }
}
