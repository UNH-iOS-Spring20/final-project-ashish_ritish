//
//  ProductView.swift
//  MarketPlace
//
//  Created by Ashish Shrestha on 3/19/20.
//  Copyright © 2020 Ashish-Ritish. All rights reserved.
//

import SwiftUI

struct ProductView: View {
    var product: Product
    
    var body: some View {
        VStack() {
            HStack(alignment: .center){
                Image(self.product.imageName)
                .renderingMode(.original)
                .resizable()
                .layoutPriority(97)
                .aspectRatio(contentMode: .fit)
//                .frame(height: 150)
                .clipped()
            }.padding()
            HStack() {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .fixedSize(horizontal: false, vertical: true)
                        .layoutPriority(98)
                    Text("$ " + String(product.price))
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                        .layoutPriority(99)
                }
                Spacer()
            }
            .padding()
            .background(Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.05)))
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 4, x:0, y:0)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: firebaseSession.products[0])
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
