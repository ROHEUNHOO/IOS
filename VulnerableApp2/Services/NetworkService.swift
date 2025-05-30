//
//  NetworkService.swift
//  VulnerableApp2
//
//  Created by TOBENIX on 5/30/25.
//

import Foundation
 
class NetworkService {
    func fetch(urlString: String) {
        guard let url = URL(string: urlString) else { return }
 
        // 💥 CWE-295: HTTPS 인증 검증 없음
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                // 💥 CWE-200: 응답 평문 출력
                print("Response: \(String(decoding: data, as: UTF8.self))")
            }
        }
        task.resume()
    }
}
