//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by 村岡海人 on 2024/12/04.
//

import SwiftUI

struct ContentView: View {
    @State private var textField = ""
    @FocusState private var isTextFieldFocused: Bool
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Return Key: Default", text: $textField)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: Default")
                }
            
            TextField("Return Key: continue", text: $textField)
                .submitLabel(.continue)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: continue")
                }
            
            TextField("Return Key: done", text: $textField)
                .submitLabel(.done)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: done")
                }
            
            TextField("Return Key: go", text: $textField)
                .submitLabel(.go)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: go")
                }
            
            TextField("Return Key: join", text: $textField)
                .submitLabel(.join)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: join")
                }
            
            TextField("Return Key: next", text: $textField)
                .submitLabel(.next)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: next")
                }
            
            TextField("Return Key: return", text: $textField)
                .submitLabel(.return)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: return")
                }
            
            TextField("Return Key: route", text: $textField)
                .submitLabel(.route)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: route")
                }
            
            TextField("Return Key: search", text: $textField)
                .submitLabel(.search)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: search")
                }
            
            TextField("Return Key: send", text: $textField)
                .submitLabel(.send)
                .focused($isTextFieldFocused)
                .onSubmit {
                    print("Return Key: send")
                }
        }
        .onTapGesture {
            isTextFieldFocused = false
        }
    }
}

#Preview {
    ContentView()
}
