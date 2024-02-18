//
//  UIViewController+Ex.swift
//  HandyKit
//
//  Created by 장선영 on 2024/02/18.
//

import Foundation
import SnapKit

public extension UIViewController {
    
    func showToast(label: HandyKitLabel, height: CGFloat, backgroundColor: UIColor, duration: CGFloat) {
        let toastView = UIView()
        toastView.backgroundColor = backgroundColor
        
        self.view.addSubview(toastView)
        toastView.addSubview(label)
        
        toastView.snp.makeConstraints {
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).inset(height)
            $0.leading.trailing.equalToSuperview().inset(16)
        }
        
        label.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(12)
        }
        
        self.view.layoutIfNeeded()
        toastView.layer.cornerRadius = toastView.bounds.height / 2
       
        UIView.animate(withDuration: duration, delay: 1.0, options: .curveEaseOut, animations: {
            toastView.alpha = 0.0
        }, completion: { _ in
            toastView.removeFromSuperview()
        })
    }
}
