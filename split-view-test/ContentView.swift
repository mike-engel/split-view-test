//
//  ContentView.swift
//  split-view-test
//
//  Created by Michael Engel on 25.05.21.
//

import SwiftUI

struct A: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Text("Pane A")
                
                Spacer()
            }
            
            Spacer()
        }
        .frame(
            minWidth: 200,
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .leading
        )
        .background(Color.red)
        .foregroundColor(.black)
        .layoutPriority(1)
    }
}

struct B: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Text("Pane B")
                
                Spacer()
            }
            
            Spacer()
        }
        .frame(
            minWidth: 200,
            idealWidth: 250,
            maxWidth: 300,
            maxHeight: .infinity
        )
        .background(Color.purple)
        .foregroundColor(.black)
    }
}

struct ContentView: View {
    var body: some View {
        HSplitView {
            A()
            B()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
