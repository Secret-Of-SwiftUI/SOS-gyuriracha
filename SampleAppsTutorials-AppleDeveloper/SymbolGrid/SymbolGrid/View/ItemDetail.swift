//
//  ItemDetail.swift
//  SymbolGrid
//
//  Created by kimhyungyu on 2022/03/15.
//

import SwiftUI

struct ItemDetail: View {
    var symbolName: String

    var body: some View {
        VStack {
            Text(symbolName)
                .font(.system(.largeTitle, design: .rounded))
            
            Image(systemName: symbolName)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.accentColor)
        }
        .padding()
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(symbolName: "magnifyingglass")
    }
}
