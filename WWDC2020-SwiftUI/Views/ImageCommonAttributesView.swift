//
//  ImageCommonAttributesView.swift
//  WWDC2020-SwiftUI
//
//  Created by Eironeia on 28/06/2020.
//

import SwiftUI

struct ImageCommonAttributesView: View {

    //Minute 20 for Introduction SwiftUI WWDC 2020
    @State private var zoomed = false
    var body: some View {
        Image("Lin-Stolker")
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .onTapGesture {
                withAnimation {
                    zoomed.toggle()
                }
            }
            .cornerRadius(zoomed ? 0 : 8)
            .shadow(color: .black, radius: zoomed ? 0 : 8)
            .padding(.all, 36)

    }
}

struct ImageCommonAttributesView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCommonAttributesView()
    }
}
