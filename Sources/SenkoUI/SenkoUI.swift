// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public extension View {
    func applyBadgeWith(color : Color , radius: CGFloat , position: Alignment = .topTrailing , state: Binding<Bool> = .constant(true) , animation: BadgeAnimation = BadgeAnimation.none) -> some View {
        self.modifier(BadgeModifier(color: color, radius: radius, position: position, show: state,animation: animation))
    }
}
