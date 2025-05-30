//
//  AuthService.swift
//  VulnerableApp2
//
//  Created by TOBENIX on 5/30/25.
//

import Foundation
 
class AuthService {
    func login(username: String, password: String) {
        // CWE-798: 하드코딩된 인증 로직
        if username == "admin" && password == "1234" {
            print("Logged in as admin")
        }
 
        // CWE-312: 암호화 없이 저장
        UserDefaults.standard.set(password, forKey: "lastPassword")
    }
}
