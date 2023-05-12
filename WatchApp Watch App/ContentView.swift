//
//  ContentView.swift
//  WatchApp Watch App
//
//  Created by apple on 12/05/23.
//

import SwiftUI
import UIKit
import MMWormhole

extension String
{
    var toNS: NSString
    {
        get
        {
            return (self as NSString)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            let wormhole = MMWormhole(applicationGroupIdentifier: "group.com.sclera.WormholeExample", optionalDirectory: nil)
            wormhole.passMessageObject("hello".toNS, identifier: "sendingFromWatch")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

