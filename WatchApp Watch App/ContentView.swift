//
//  ContentView.swift
//  WatchApp Watch App
//
//  Created by apple on 12/05/23.
//

import SwiftUI
import UIKit
import MMWormhole

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}



struct ContentView: View {
    let wormhole = MMWormhole(applicationGroupIdentifier: "group.com.sclera.WormholeExample", optionalDirectory: "wormhole")

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            wormhole.listenForMessage(withIdentifier: "numberclicked") { result in
                if let finalResult = result as? String {
                    self.display(result: finalResult)
                }
            }
        }
    }

    func display(result: String) {
        // Handle the received result
        print("Received result: \(result)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
