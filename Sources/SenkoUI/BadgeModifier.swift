//
//  BadgeModifier.swift
//  SenkoUI
//
//  Created by Dasari Kousik on 09/07/25.
//

import SwiftUI

public enum BadgeAnimation {
    case shine
    case none
}

public struct BadgeModifier: ViewModifier {
    public var color: Color
    public var radius: CGFloat
    public var position: Alignment
    @Binding public var show: Bool
    public var animation: BadgeAnimation

    @State private var shimmer = false

    public init(color: Color, radius: CGFloat, position: Alignment, show: Binding<Bool>, animation: BadgeAnimation = .none) {
        self.color = color
        self.radius = radius
        self.position = position
        self._show = show
        self.animation = animation
    }

    public func body(content: Content) -> some View {
        ZStack(alignment: self.position) {
            content
            if show {
                badgeView()
                    .offset(x: position == .topTrailing ? radius : 0,
                            y: position == .topTrailing ? -radius : 0)
            }
        }
    }

    @ViewBuilder
    private func badgeView() -> some View {
        let circle = Circle()
            .fill(self.color)
            .frame(width: radius * 2, height: radius * 2)

        switch animation {
        case .none:
            circle
        case .shine:
            circle
                .overlay(
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.white.opacity(0.8), Color.white.opacity(0.4)]),
                                   startPoint: .topLeading,
                                   endPoint: .topTrailing)
                        .rotationEffect(.degrees(30))
                        .offset(x: shimmer ? 60 : -60)
                )
                .onAppear {
                    withAnimation(
                        Animation.linear(duration: 1.5)
                            .repeatForever(autoreverses: false)
                    ) {
                        shimmer = true
                    }
                }
                .mask(circle)
        }
    }
}


