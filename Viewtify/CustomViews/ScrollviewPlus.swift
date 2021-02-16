//
//  TotalScrollView.swift
//  Viewtify
//
//  Created by Oscar Castillo on 1/7/21.
//

import SwiftUI

struct ScrollviewPlus<Content: View>: View {
    let axes: Axis.Set
    let onOffsetChange: (CGFloat) -> Void
    let content: () -> Content
    
    init(
        axes: Axis.Set = .vertical,
        onOffsetChange: @escaping (CGFloat) -> Void,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.axes = axes
        self.onOffsetChange = onOffsetChange
        self.content = content
    }
    
    var body: some View {
        ScrollView(axes) {
            offsetReader
            content()
                .padding(.top, -8)
        }
        .coordinateSpace(name: "frameLayer")
        .onPreferenceChange(OffsetPreferenceKey.self, perform: onOffsetChange)
    }
    
    var offsetReader: some View {
        GeometryReader { proxy in
            Color.clear
                .preference(
                    key: OffsetPreferenceKey.self,
                    value: proxy.frame(in: .named("frameLayer")).minY
                )
        }
        .frame(height: 0)
    }
}

private struct OffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {}
}
