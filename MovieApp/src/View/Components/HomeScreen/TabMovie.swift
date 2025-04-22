//
//  TabMovie.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 22/4/25.
//

import Foundation
import SwiftUI

enum TypeTab: String {
    case normal = "normal"
    case watch = "watch"
}

struct TabMovie: View {

    var typeTab: TypeTab? = nil
    let title: String
    let movies: [MovieModel]

    var body: some View {
        VStack(spacing: 8) {
            renderTitle()
            renderType(movies)
        }
        .padding(.horizontal, paddingThemes.padding_H_primary)
    }
}

extension TabMovie {
    fileprivate func renderTitle() -> some View {
        HStack {
            Text(title).font(Fonts.nunitoBold(17)).foregroundColor(.white)
            Spacer()
            Text("See all")
                .font(Fonts.nunitoSemiBold())
                .foregroundColor(colorThemes.colorPrimary)
                .onTapOpacity  {
                    print("aaaa")
                }
        }
    }

    fileprivate func renderType(_ movies: [MovieModel]) -> some View {
        ScrollView([.horizontal]) {
            HStack(spacing: 16){
                Group {
                    switch typeTab {
                    case .normal:
                        renderTypeNomal(movies)
                    case .watch:
                        renderTypeWatch(movies)
                    case .none:
                        EmptyView()
                    @unknown default:
                        EmptyView()
                        
                    }
                }
            }
        }
    }
}

extension TabMovie {
    fileprivate func renderTypeNomal(_ movies: [MovieModel]) -> some View {
        VStack{
            
        }
    }
    fileprivate func renderTypeWatch(_ movies: [MovieModel]) -> some View {
        let cardWidth = ScreenSize.width * 0.5
        let cardHeight: CGFloat = 120
        
        return ForEach(movies){
            movie in
            VStack(alignment: .leading){
                AsyncImage(url: URL(string: movie.image)) { image in
                    switch image {
                    case .empty:
                        // Khi ảnh đang được tải
                        ImageStatusLoading()

                    case .success(let image):
                        // Khi ảnh đã tải thành công
                        image
                            .resizable()
                            .scaledToFill()

                    case .failure(_):
                        // Khi ảnh tải thất bại
                        ImageStatusFail()

                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(
                    width: cardWidth, height: cardHeight
                )
                .clipped()
                .cornerRadius(radiusThemes.connerRadiusPrimary)
                .shadow(radius: 3)
                renderTitleMovie(movie)
            }.onTapOpacity {
                print("aaaa")
            }
            
        }
    }
}

extension TabMovie {
    fileprivate func renderTitleMovie (_ movie: MovieModel) -> some View{
        HStack{
            Text(movie.title)
                .font(Fonts.nunitoSemiBold(16))
                .foregroundColor(.white)
            Spacer()
            Text(movie.timeContinue) .font(Fonts.nunitoRegular(14))
                .foregroundColor(colorThemes.colorSecondary)
        }
    }
}

#Preview {
    EntryPointApp()
}
