//
//  ButtonWrapper.swift
//  SwiftUIPractice
//
//  Created by 소정섭 on 8/28/24.
//

import Foundation
import SwiftUI

private struct ButtonWrapper: ViewModifier {
    var action: () -> Void = {
        print("buttonwrapper clicked")
    }
    func body(content: Content) -> some View {
        Button(action: action, label: { content })

    }
}
extension View {
    func wrapToButton(action: @escaping () -> Void ) -> some View {
        modifier(ButtonWrapper(action: action))
    }
}
