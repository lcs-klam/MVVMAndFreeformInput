//
//  ContentView.swift
//  MVVMAndFreeformInput
//
//  Created by Kevin Lam on 21/2/2025.
//

import SwiftUI

struct PowerView: View {
    // MARK: Stored properties
     
    // Holds the view model, to track current state of
    // data within the app
    @State var viewModel = PowerViewModel()
     
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // INPUT
            TextField("Base", text: $viewModel.providedBase)
            TextField("Exponent", text: $viewModel.providedExponent)
            
            // OUTPUT
            if let power = viewModel.power {
                Text("Result is: \(power.result)")
            }
            Text(viewModel.recoverySuggestion)
     
        }
        .padding()
    }
}

#Preview {
    PowerView()
}
