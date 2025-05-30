//
//  LoginView.swift
//  VulnerableApp2
//
//  Created by TOBENIX on 5/30/25.
//

import SwiftUI
 
struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
 
    var body: some View {
        VStack {
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Login") {
                AuthService().login(username: username, password: password)
            }
        }
        .padding()
    }
}
