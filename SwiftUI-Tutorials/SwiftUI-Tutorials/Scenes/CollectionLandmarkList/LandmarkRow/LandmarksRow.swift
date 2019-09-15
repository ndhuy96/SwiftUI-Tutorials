//
//  LandmarksRow.swift
//  SwiftUI-Tutorials
//
//  Created by mac on 9/14/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import SwiftUI

struct LandmarksRow: View {
    var categoryName: String
    var landmarks: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(landmarks, id: \.name) { landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LankmarkItem(landmark: landmark)
                            .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
}

struct LandmarksRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksRow(categoryName: "LANDMARKS", landmarks: landmarkData)
    }
}
