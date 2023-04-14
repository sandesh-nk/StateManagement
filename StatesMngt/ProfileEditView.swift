//
//  ProfileEditView.swift
//  StatesMngt
//
//  Created by Apple on 14/04/23.
//

import SwiftUI

struct ProfileEditView: View {
    @EnvironmentObject  var profileViewModel: ProfileViewModel
    var body: some View {
        Form {
            Picker("Select Gender", selection: $profileViewModel.gender) {
                ForEach(Gender.allCases, id:  \.self) { gender in
                    Text(gender.rawValue)
                }
            }
            .pickerStyle(.inline)
            
            TextField("Name", text: $profileViewModel.name)
            TextField("Location", text: $profileViewModel.location)
            TextField("Organisation", text: $profileViewModel.organisation)
            TextField("Role", text: $profileViewModel.role)
        }
        .navigationTitle("Edit Profile")
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView()
            .environmentObject(ProfileViewModel())
    }
}
