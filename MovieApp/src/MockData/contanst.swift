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
    static let filterMoive = [
        "All", "Action", "Movie", "Anime", "Drama", "Tv Show", "Adventure",
        "Fantasy", "Game", "Romance",
    ]

    static let filterMoiveByModel = [
        FilterModel(
            id: 1,
            title: "All"
        ),
        FilterModel(
            id: 2,
            title: "Action"
        ),
        FilterModel(
            id: 3,
            title: "Movie"
        ),
        FilterModel(
            id: 4,
            title: "Anime"
        ),
        FilterModel(
            id: 5,
            title: "Drama"
        ),
        FilterModel(
            id: 123,
            title: "Tv Show"
        ),
        FilterModel(
            id: 23,
            title: "Adventure"
        ),
        FilterModel(
            id: 43,
            title: "Fantasy"
        ),
        FilterModel(
            id: 144,
            title: "Game"
        ),
        FilterModel(
            id: 1777,
            title: "Romance"
        ),
    ]
}
