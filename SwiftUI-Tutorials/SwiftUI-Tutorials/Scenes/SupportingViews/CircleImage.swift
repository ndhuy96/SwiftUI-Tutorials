//
//  CircleImage.swift
//  SwiftUI-Tutorials
//
//  Created by nguyen.duc.huyb on 9/12/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("image1"))
            .previewLayout(.sizeThatFits)
    }
}
