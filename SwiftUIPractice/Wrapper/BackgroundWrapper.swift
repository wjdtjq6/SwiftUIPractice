//
//  BackgroundWrapper.swift
//  SwiftUIPractice
//
//  Created by 소정섭 on 8/28/24.
//

import Foundation
import SwiftUI

struct BackgroundWrapper: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .background(color)
        } else {
            content
                .background(color)
        }
    }
}
extension View {
    func asBackground(_ color: Color) -> some View {
        modifier(BackgroundWrapper(color: color))
    }
}
