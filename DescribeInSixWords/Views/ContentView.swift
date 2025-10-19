//
//  ContentView.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 09/08/2025.
//

import SwiftUI

enum Screen: Hashable {
    case form
    case grid
}

struct ContentView: View {
    @State private var path: [Screen] = []
    @StateObject private var viewModel = FormViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            WelcomeView(path: $path)
                .navigationDestination(for: Screen.self) { screen in
                    switch screen {
                    case .form:
                        FormView(path: $path)
                            .navigationBarBackButtonHidden(true)
                        // TODO: Implement .disableSwipeBack() helper function
                    case .grid:
                        GridView(path: $path)
                    }
                }
        }.environmentObject(viewModel)
    }
}

#Preview {
    ContentView()
}
