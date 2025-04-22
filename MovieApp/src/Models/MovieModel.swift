//
//  MovieModel.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 19/4/25.
//

import Foundation

struct CategoryModel: Identifiable, Codable, Hashable  {
    let id: String
    let title: String
}

//Identifiable : cần để foreach đánh dấu
//Codable : convert Json
//Hashable: băm ra, mỗi model là 1 khoá riêng biệt

struct MovieModel: Identifiable, Codable, Hashable {
    let id: String
    let title: String
    let description:String
    let thumnail: String
    let image: String
    let category: [String]
    let chapters: Int
    let isSave: Bool
    let yearMovie: String
    let rate: String
    let isHot: Bool
    let timeContinue: String
}
