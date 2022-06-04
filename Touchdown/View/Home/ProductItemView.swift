//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Tin Tran on 04/06/2022.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // MARK: - photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                .padding(10)
            }
            .background(
                Color(red: product.red, green: product.green, blue: product.blue)
            )
            .cornerRadius(12)
            
            // MARK: - name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                
            // MARK: - price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

// MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
