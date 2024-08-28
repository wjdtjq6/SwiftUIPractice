//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by 소정섭 on 8/28/24.
//

import SwiftUI

struct NetflixView: View {

    @State private var title = "NETFLIX"
    @State private var isOn = true

    var body: some View {
                
        ZStack {
            Color(.black)
            
            VStack {
                Text(title)
                    .font(.largeTitle.bold())
                    .asForeground(.red)
                    .frame(width: 300, height: 200, alignment: .top)
                TextFieldsView(placeholder: "이메일 주소 또는 전화번호")
                TextFieldsView(placeholder: "비밀번호")
                TextFieldsView(placeholder: "닉네임")
                TextFieldsView(placeholder: "위치")
                TextFieldsView(placeholder: "추천 코드 입력")
                Text("회원가입")
                    .font(.title3.bold())
                    .asForeground(.black)
                    .padding()
                    .frame(width: 330,height: 35)
                    .asBackground(.white)
                    .clipShape(.rect(cornerRadius: 10))
                    .wrapToButton {
                        print("NETFLIX 바껴라")
                        title = "JIMMYFLIX"
                    }
                Toggle(isOn: $isOn, label: {
                    Text("추가 정보 입력").foregroundStyle(.white)
                })
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
                .frame(width: 330, height: 40)
            }
        }
        .ignoresSafeArea()
    }
}
struct TextFieldsView: View {
    @State private var text = ""

    let placeholder: String
    
    var body: some View {
        TextField("",text: $text, prompt: Text(placeholder).foregroundStyle(.white))
            .multilineTextAlignment(.center)
            .frame(width: 300,height: 8)
            .asRadiusGraybackground()
    }
}
#Preview {
    NetflixView()
}
