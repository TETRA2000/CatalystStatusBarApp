//
//  ContentView.swift
//  CatalystStatusBarApp
//
//  Created by Takahiko Inayama on 2020/07/04.
//  Copyright © 2020 TETRA2000. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")

                Button(action: {
                    StatusBarAdapter.controller?.enableStatusBarItem()
                }) {
                    Text("Enable manually.")
                }
            }
        }.onAppear(perform: {
            StatusBarAdapter.controller?.enableStatusBarItem()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
