//
//  DashboardView.swift
//  VulnerableApp2
//
//  Created by TOBENIX on 5/30/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            Text("Welcome to the dashboard!")
            Text("Here is your sensitive data: \(UserDefaults.standard.string(forKey: "lastPassword") ?? "")") // CWE-200: 정보 노출
        }
        .padding()
        }
    }

