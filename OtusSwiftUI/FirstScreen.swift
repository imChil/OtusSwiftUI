//
//  FirstScreen.swift
//  OtusSwiftUI
//
//  Created by  Pavel Chilin on 11.12.2022.
//

import SwiftUI

struct FirstScreen: View {
    
    @Binding var tabSelection: Int
    @State var text = NSMutableAttributedString(string: "UIkit")
    
    var body: some View {
        VStack {
            Text("go to Founder")
                .onTapGesture {
                    tabSelection = 1
                }
            TextView(text: $text)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text: NSMutableAttributedString

    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}

