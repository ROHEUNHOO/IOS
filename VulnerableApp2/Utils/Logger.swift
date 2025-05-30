//
//  Logger.swift
//  VulnerableApp2
//
//  Created by TOBENIX on 5/30/25.
//

import Foundation
 
class Logger {
    static func logSensitiveInfo(_ info: String) {
        // 💥 CWE-532: 민감 정보 로그에 기록
        print("SENSITIVE: \(info)")
    }
}
