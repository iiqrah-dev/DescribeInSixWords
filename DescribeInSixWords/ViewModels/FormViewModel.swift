//
//  FormViewModel.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 08/08/2025.
//

import Foundation

class FormViewModel: ObservableObject {
    @Published var fields: [FormField] = [
        FormField(prompt: "Who or what are you describing today?", placeholder: "Cat", descriptor: ""),
        FormField(prompt: "First word that comes to mind:", placeholder: "smart", descriptor: ""),
        FormField(prompt: "Second word:", placeholder: "arrogant", descriptor: ""),
        FormField(prompt: "Third time’s a charm:", placeholder: "furry", descriptor: ""),
        FormField(prompt: "Another one, almost there:", placeholder: "cute", descriptor: ""),
        FormField(prompt: "Final one, make it count:", placeholder: "meow", descriptor: ""),
    ]
}
