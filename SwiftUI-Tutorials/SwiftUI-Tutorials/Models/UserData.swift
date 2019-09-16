//
//  UserData.swift
//  SwiftUI-Tutorials
//
//  Created by nguyen.duc.huyb on 9/16/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
