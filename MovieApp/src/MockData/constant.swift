//
//  contanst.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 17/4/25.
//

import Foundation

struct ContanstData {
    static let imageMovie = [
        "https://cdn2.fptshop.com.vn/unsafe/800x0/phim_chieu_rap_tet_duong_lich_2025_11_54a9f7d89e.jpg",
        "https://cdn.tuoitrethudo.vn/stores/news_dataimages/ngokhucquanganh/062021/14/08/2509_Poster_1.jpg?rt=20210614082516",
        "https://image.dienthoaivui.com.vn/x,webp,q90/https://dashboard.dienthoaivui.com.vn/uploads/dashboard/editor_upload/phim-hanh-dong-chieu-rap-2.jpg",
        "https://cuocsong.giaoducthoidai.vn/upload_images/images/2021/09/27/793954ac98e451ba08f5.jpg",
        "https://thethaovanhoa.mediacdn.vn/thumb_w/1200/372676912336973824/2023/8/28/phim-chieu-rap-16932066037461323984944-0-0-1005-1920-crop-16932069538761964938707.jpg",
    ]
    
    
    static let movies = [
        MovieModel(
            id: "1",
            title: "Bố già",
            description: "là 1 phim bố già việt nam",
            thumnail: "https://cdn.tuoitrethudo.vn/stores/news_dataimages/ngokhucquanganh/062021/14/08/2509_Poster_1.jpg?rt=20210614082516",
            image: "https://cdn.tuoitrethudo.vn/stores/news_dataimages/ngokhucquanganh/062021/14/08/2509_Poster_1.jpg?rt=20210614082516",
            category: ["Action", "Movie"],
            chapters: 32,
            isSave: false,
            yearMovie: "2024",
            rate: "2",
            isHot: false,
            timeContinue:"01:20:22"
        ),
        MovieModel(
            id: "2",
            title: "Supper man",
            description: "là 1 phim bố già việt nam",
            thumnail: "https://cdn2.fptshop.com.vn/unsafe/800x0/phim_chieu_rap_tet_duong_lich_2025_11_54a9f7d89e.jpg",
            image: "https://cdn2.fptshop.com.vn/unsafe/800x0/phim_chieu_rap_tet_duong_lich_2025_11_54a9f7d89e.jpg",
            category: ["Anime", "Drama"],
            chapters: 52,
            isSave: false,
            yearMovie: "2024",
            rate: "2",
            isHot: false,
            timeContinue:"00:40:22"
        ),
        MovieModel(
            id: "3",
            title: "God of War",
            description: "là 1 phim bố già việt nam",
            thumnail: "https://cuocsong.giaoducthoidai.vn/upload_images/images/2021/09/27/793954ac98e451ba08f5.jpg",
            image: "https://cuocsong.giaoducthoidai.vn/upload_images/images/2021/09/27/793954ac98e451ba08f5.jpg",
            category: ["Adventure", "Fantasy"],
            chapters: 22,
            isSave: false,
            yearMovie: "2024",
            rate: "2",
            isHot: false,
            timeContinue:"00:01:00"
        )
    ]

    static let filterMoiveByModel = [
        CategoryModel(
            id: "1",
            title: "All"
        ),
        CategoryModel(
            id: "2",
            title: "Action"
        ),
        CategoryModel(
            id: "3",
            title: "Movie"
        ),
        CategoryModel(
            id: "4",
            title: "Anime"
        ),
        CategoryModel(
            id: "5",
            title: "Drama"
        ),
        CategoryModel(
            id: "123",
            title: "Tv Show"
        ),
        CategoryModel(
            id: "23",
            title: "Adventure"
        ),
        CategoryModel(
            id: "43",
            title: "Fantasy"
        ),
        CategoryModel(
            id: "144",
            title: "Game"
        ),
        CategoryModel(
            id: "1777",
            title: "Romance"
        ),
    ]
}
