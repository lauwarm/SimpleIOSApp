//
//  PageView.swift
//  SimpleIOSApp
//
//  Created by Fabian on 28.01.21.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        PageViewController(pages: pages, currentPage: $currentPage)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                .aspectRatio(3 / 2, contentMode: .fit)
            PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                .aspectRatio(3 / 2, contentMode: .fit)
        }
    }
}
