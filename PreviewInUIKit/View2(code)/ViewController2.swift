//
//  ViewController2.swift
//  PreviewInUIKit
//
//  Created by 이택성 on 2022/08/11.
//

import UIKit

class ViewController2: UIViewController {

    private lazy var contentView = Views()

    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}



#if DEBUG
import SwiftUI

// Code Previews
struct ViewController2Presentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone 12 Pro Max", "iPhone 8"], id: \.self) {
                ViewController2().toPreview()
                    .previewDevice(PreviewDevice(rawValue: $0))
                    .previewDisplayName($0)
                
            }
        }
    }
}

#endif
