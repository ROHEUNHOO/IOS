//
//  SettingView.swift
//  VulnerableApp2
//
//  Created by TOBENIX on 5/30/25.
//

import SwiftUI
 
struct SettingsView: View {
    @State private var email = ""
 
    var body: some View {
        VStack {
            TextField("Enter your email", text: $email)
                .textFieldStyle(.roundedBorder)
            Button("Save") {
                // 💥 CWE-312: 민감정보 평문 저장
                UserDefaults.standard.set(email, forKey: "userEmail")
            }
        }
        .padding()
    }
}
