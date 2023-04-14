//
//  ProfileViewModel.swift
//  StatesMngt
//
//  Created by Apple on 14/04/23.
//

import SwiftUI

enum Gender: String, CaseIterable {
    case men, woman
}

class ProfileViewModel: ObservableObject {
    @Published var name: String = "Sandesh Naik"
    @Published var location: String = "Goa, India"
    @Published var gender: Gender = .men
    @Published var organisation: String = "Wednesday Solutions"
    @Published var role: String = "iOS Developer"
}

