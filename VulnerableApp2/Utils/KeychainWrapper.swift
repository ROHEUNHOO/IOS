//
//  KeychainWrapper.swift
//  VulnerableApp2
//
//  Created by TOBENIX on 5/30/25.
//

import Foundation
 
class KeychainWrapper {
    // 💥 CWE-798: 하드코딩된 키 사용
    private let encryptionKey = "myHardcodedEncryptionKey"
 
    func save(value: String, forKey key: String) {
        print("Pretend this was securely saved with key \(encryptionKey)") // 💥 CWE-321
    }
 
    func load(forKey key: String) -> String? {
        return "mocked_data"
    }
}
