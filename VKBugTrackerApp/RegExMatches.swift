//
//  match.swift
//  VKBugTrackerApp
//
//  Created by Nick Aroot on 14/01/2018.
//  Copyright © 2018 Nick Aroot. All rights reserved.
//

import Foundation

func matches(for regex: String, in text: String) -> [String] {
    
    do {
        let regex = try NSRegularExpression(pattern: regex)
        let results = regex.matches(in: text,
                                    range: NSRange(text.startIndex..., in: text))
        return results.map {
            String(text[Range($0.range, in: text)!])
        }
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}
