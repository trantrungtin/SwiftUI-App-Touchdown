//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Tin Tran on 04/06/2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // MARK: - navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // MARK: - header
            HeaderDetailView()
                .padding(.horizontal)
            
            // MARK: - detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // MARK: - detail bottom part
            VStack(alignment: .center, spacing: 0) {
                // MARK: - ratings + sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // MARK: - description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                // MARK: - quantity + favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // MARK: - add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )

            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
