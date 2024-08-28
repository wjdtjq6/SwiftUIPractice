//
//  RadiusGrayBackground.swift
//  SwiftUIPractice
//
//  Created by 소정섭 on 8/28/24.
//

import Foundation
import SwiftUI

struct RadiusGrayBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .asForeground(.white)
            .padding()
            .asBackground(.gray)
            .clipShape(.rect(cornerRadius: 10))
    }
}
extension View {
    func asRadiusGraybackground() -> some View {
        modifier(RadiusGrayBackground())
    }
}
