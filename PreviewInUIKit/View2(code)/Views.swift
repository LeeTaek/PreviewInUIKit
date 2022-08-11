//
//  Views.swift
//  PreviewInUIKit
//
//  Created by 이택성 on 2022/08/11.
//

import UIKit

class Views: UIView {
    
    lazy var testLabel2 = UILabel()
    lazy var testButton2 = UIButton()

    init() {
         super.init(frame: .zero)
         
         addSubViews()
         setUpConstraints()
         setUpViews()
     }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func addSubViews() {
        [testLabel2, testButton2]
            .forEach{
                addSubview($0)
                $0.translatesAutoresizingMaskIntoConstraints = false
            }
    }

    // 오토레이아웃
    private func setUpConstraints() {
          NSLayoutConstraint.activate([
              testLabel2.centerXAnchor.constraint(equalTo: self.centerXAnchor),
              testLabel2.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
              testLabel2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40.0),
              testLabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
              testLabel2.heightAnchor.constraint(equalToConstant: 20.0),
          ])
      }
    
    
    
    private func setUpViews() {
            testLabel2.text = "Test Label2"
    }
    
    
}




#if DEBUG
import SwiftUI

// UIview를 SwiftUI 의 View로 바꾸기 위한 UIview extension
extension UIView {
    private struct Preview: UIViewRepresentable {
        let view: UIView
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
        }
        
        func makeUIView(context: Context) -> some UIView {
            return view
        }
    }
    
    func toPreview() -> some View {
        Preview(view: self)
    }
}

// Code Previews
struct ViewsPresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Views().toPreview()
    }
}

#endif
