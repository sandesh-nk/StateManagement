//
//  ProfileView.swift
//  StatesMngt
//
//  Created by Apple on 14/04/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject  var profileViewModel: ProfileViewModel
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .frame(height: 400)
                        .foregroundColor(profileViewModel.gender == .men ? .blue : .pink)
                    
                    Image(profileViewModel.gender.rawValue)
                        .resizable()
                        .frame(width: 240, height: 240)
                        .clipShape(Circle())
                        .padding(.top, 74)
                    
                }
                .edgesIgnoringSafeArea(.top)
                .overlay(alignment: .topTrailing, content: {
                    NavigationLink(destination: ProfileEditView()) {
                        Image(systemName: "pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                    }
                })
                
                List {
                    Text("Name: \(profileViewModel.name)")
                    Text("Location: \(profileViewModel.location)")
                    Text("Gender: \(profileViewModel.gender.rawValue.capitalized)")
                    Text("Organisation: \(profileViewModel.organisation)")
                    Text("Position: \(profileViewModel.role)")
                }
                .listStyle(.plain)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(ProfileViewModel())

    }
}
