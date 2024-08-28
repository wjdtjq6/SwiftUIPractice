//
//  ForegroundWrapper.swift
//  SwiftUIPractice
//
//  Created by 소정섭 on 8/28/24.
//

import Foundation
import SwiftUI

private struct ForegroundWrapper: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .foregroundStyle(color)
        } else {
            content
                .foregroundColor(color)
        }
    }
}
extension View {
    func asForeground(_ color: Color) -> some View {
        modifier(ForegroundWrapper(color: color))
    }
}
