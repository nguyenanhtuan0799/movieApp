//
//  AutoSlide.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 15/4/25.
//

import Foundation
import SwiftUI

struct AutoSlide: View {

    @State private var currentIndex: Int = 0
    @GestureState private var dragOffset: CGFloat = 0
    let heightView: CGFloat
    let images: [String]

    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    let spacing: CGFloat = 4

    var body: some View {
        VStack(spacing: 4) {
            renderContainerSlide()
            renderDotSlide()
        }.frame(height: 210)

    }

}

extension AutoSlide {
    fileprivate func renderContainerSlide() -> some View {
        GeometryReader {
            geometry in
            let cardWidth: CGFloat = geometry.size.width * 0.86
            let screenWidth: CGFloat = geometry.size.width
            let offSet =
                -CGFloat(currentIndex) * (cardWidth + spacing) + dragOffset
                + (screenWidth - cardWidth) / 2

            HStack(spacing: spacing) {
                renderImage(cardWidth: cardWidth)
            }.offset(x: offSet)
                .gesture(
                    DragGesture().updating(
                        $dragOffset,
                        body: { value, state, _ in
                            state = value.translation.width
                        }
                    )
                    .onEnded {
                        value in
                        let dragThreshold: CGFloat = 100
                        if value.translation.width < -dragThreshold
                            && currentIndex < images.count - 1
                        {
                            currentIndex += 1
                        } else if value.translation.width > dragThreshold
                            && currentIndex > 0
                        {
                            currentIndex -= 1
                        }
                    }
                )
                .animation(.easeInOut, value: dragOffset)
                .animation(.easeInOut, value: currentIndex)
                .onReceive(timer) {
                    _ in
                    withAnimation {
                        currentIndex = (currentIndex + 1) % images.count
                    }
                }
        }
    }
}

extension AutoSlide {
    fileprivate func renderImage(cardWidth: CGFloat) -> some View {
        ForEach(images.indices, id: \.self) {
            index in
            AsyncImage(url: URL(string: images[index])) { image in
                switch image {
                case .empty:
                    // Khi ảnh đang được tải
                    renderImageEmpty()

                case .success(let image):
                    // Khi ảnh đã tải thành công
                    image
                        .resizable()
                        .scaledToFill()

                case .failure(_):
                    // Khi ảnh tải thất bại
                    renderImageFail()

                @unknown default:
                    EmptyView()
                }
            }
            .frame(
                width: cardWidth, height: heightView
            )
            .clipped()
            .cornerRadius(radiusThemes.connerRadiusPrimary)
            .shadow(radius: 3)
            .scaleEffect(currentIndex == index ? 1.0 : 0.94)
            .opacity(currentIndex == index ? 1.0 : 0.6)
            .tag(index)

        }
    }

    fileprivate func renderDotSlide() -> some View {
        HStack(spacing: 8) {
            ForEach(images.indices, id: \.self) {
                index in
                Circle()
                    .fill(
                        currentIndex == index
                            ? Color.white
                            : Color.gray
                                .opacity(0.5)
                    )
                    .frame(width: 8, height: 8)
            }
        }
    }

    fileprivate func renderImageEmpty() -> some View {
        ZStack {
            Color.gray.opacity(0.2)
            ProgressView()  // Loader
        }
    }

    fileprivate func renderImageFail() -> some View {
        ZStack {
            Color.gray.opacity(0.2)
            Image(systemName: "photo")  // Icon fallback
                .foregroundColor(.white)
        }
    }

}

#Preview {
    HomeScreen()
}
