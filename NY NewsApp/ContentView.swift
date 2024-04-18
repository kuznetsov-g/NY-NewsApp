//
//  ContentView.swift
//  NY NewsApp
//
//  Created by Георгий Кузнецов on 4/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
       Text("Hello WRLD")
    }
    }

#Preview {
    ContentView()
}
