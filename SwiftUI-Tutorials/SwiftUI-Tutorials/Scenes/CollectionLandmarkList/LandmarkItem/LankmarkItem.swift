//
//  LankmarkItem.swift
//  SwiftUI-Tutorials
//
//  Created by mac on 9/14/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import SwiftUI

struct LankmarkItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            landmark.image
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(10)
            .shadow(radius:10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(landmark.name)
                    .accentColor(.primary)
                    .font(.headline)
            
                Text(landmark.park)
                .accentColor(.primary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
        }
    }
}

struct LankmarkItem_Previews: PreviewProvider {
    static var previews: some View {
        LankmarkItem(landmark: landmarkData[0])
    }
}
