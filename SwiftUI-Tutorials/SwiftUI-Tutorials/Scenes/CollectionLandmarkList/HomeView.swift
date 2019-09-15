//
//  HomeView.swift
//  SwiftUI-Tutorials
//
//  Created by mac on 9/14/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Landmark]] {
        .init(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List (categories.keys.sorted(), id: \String.self) { key in
                LandmarksRow(categoryName: "\(key)".uppercased(), landmarks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("HOME"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
