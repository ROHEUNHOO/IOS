//
//  ContentView.swift
//  VulnerableApp
//
//  Created by TOBENIX on 5/29/25.
//

import SwiftUI
 
struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
 
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
 
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
 
            Button("Login") {
                // 취약점 예시 1: 하드코딩된 비밀번호 비교
                if password == "1234" {
                    print("로그인 성공 (하드코딩된 비밀번호 사용)")
                }
 
                // 취약점 예시 2: 암호화 없이 사용자 정보 저장
                UserDefaults.standard.set(username, forKey: "lastUsername")
 
                // 취약점 예시 3: URL Injection
                let url = URL(string: "https://example.com/login?user=\(username)&pw=\(password)")
                URLSession.shared.dataTask(with: url!) { _, _, _ in }.resume()
            }
            .padding()
        }
        .padding()
    }
}
