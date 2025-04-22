//
//  Enviroment.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 22/4/25.
//

import Foundation

struct Env {
    static let ApiUrl: String = (Bundle.main.infoDictionary?["API_URL"] as? String)?.replacingOccurrences(of: "\\", with: "") ?? "ko dc"
    static let ApiKeyMovie: String = (Bundle.main.infoDictionary?["API_KEY_MOVIE"] as? String)?.replacingOccurrences(of: "\\", with: "") ?? "ko dc"
}

