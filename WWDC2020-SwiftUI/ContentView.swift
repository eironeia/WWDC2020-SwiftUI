//
//  ContentView.swift
//  WWDC2020-SwiftUI
//
//  Created by Eironeia on 28/06/2020.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ProgressView()) {
                    Text("Simple loader")
                }

                NavigationLink(destination: CustomProgressView()) {
                    Text("Progress view")
                }

                NavigationLink(destination: ImageCommonAttributesView()) {
                    Text("Image with common attributes") 
                }
            }
            .navigationTitle("Features")
            Text( "Hey")
                .navigationTitle("Features")
        }
    }
}


struct CustomOverlayView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Text("Lin Stolker")
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            .background(Color.black)
            .opacity(0.3)
        }
    }
}

struct ImagesTabView: View {
    var body: some View {
        TabView {
            ForEach(0 ..< 5)  { _ in
                Image("Lin-Stolker")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(16)
                    .shadow(color: .black, radius: 4)
            }
            .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 8))
            Button("no more images", action: {})
        }
        .frame(width: 325, height: 488)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
