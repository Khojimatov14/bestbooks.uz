//
//  Extensions.swift
//  BestBooks.uz
//
//  Created by Anvarjon Khojimatov on 2022/02/15.
//

import Foundation
import SwiftUI

extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
    
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}

