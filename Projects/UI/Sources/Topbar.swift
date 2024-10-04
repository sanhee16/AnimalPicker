//
//  Topbar.swift
//  UI
//
//  Created by sandy on 10/4/24.
//

import SwiftUI

struct TopBar: View {
    enum IconType {
        case close
        case back
        case none
        
        var image: String? {
            switch self {
            case .close:
                return "xmark"
            case .back:
                return "arrow.backward"
            case .none:
                return nil
            }
        }
    }
    
    var type: IconType
    var text: String
    var onTap: ()->()
    
    init(type: IconType = .none, text: String, onTap: @escaping () -> Void) {
        self.type = type
        self.text = text
        self.onTap = onTap
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            ZStack(alignment: .center, content: {
                if let systemName = type.image {
                    HStack(alignment: .center, spacing: 0, content: {
                        Image(systemName: systemName)
                            .font(.system(size: 16))
                            .padding()
                            .contentShape(Rectangle())
                            .onTapGesture {
                                onTap()
                            }
                        Spacer()
                    })
                }
                Text(text)
                    .font(.kr20b)
                    .foregroundStyle(Color.black)
            })
            .frame(height: 55)
            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundStyle(Color.black.opacity(0.5))
        })
        .frame(height: 56, alignment: .top)
        .background(Color.white)
    }
}

