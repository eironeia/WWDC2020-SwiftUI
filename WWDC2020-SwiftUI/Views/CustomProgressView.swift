//
//  CustomProgressView.swift
//  WWDC2020-SwiftUI
//
//  Created by Eironeia on 28/06/2020.
//

import SwiftUI
import Combine

struct CustomProgressView: View {
    @State var progressValue: CGFloat = 0
    let timer = Timer
        .publish(every: 0.01, on: .main, in: .common)
        .autoconnect()

    //Warning: This works but not opening from a NavigationLink, might be a bug?
    var body: some View {
        VStack {
            Spacer()
            ProgressView("Downloading", value: progressValue)
                .padding(.leading)
                .padding(.trailing)
                .onReceive(timer) { _ in
                    if progressValue >= 1 {
                        progressValue = 0
                    } else {
                        progressValue += 0.01
                    }
                }
            Spacer()
        }
    }
}

struct CustomProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CustomProgressView()
    }
}
