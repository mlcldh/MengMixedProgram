//
//  LCSBoxView.swift
//  MengMixedProgram
//
//  Created by menglingchao on 2020/12/16.
//

import UIKit
import SnapKit
import HeheKit
//import TestModulemap

@objcMembers public class LCSBoxView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .yellow
        
        addLCHeheView()
        addLCSHeheView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: -
    private func addLCHeheView() {//主工程的Swift代码调用pod里的OC代码
        let heheView = LCHeheView()
        addSubview(heheView)
        heheView.snp_makeConstraints { (make) in
            make.left.top.equalToSuperview()
            make.bottom.equalToSuperview().offset(-20)
            make.width.equalTo(100)
        }
    }
    private func addLCSHeheView() {//主工程的Swift代码调用pod里的Swift代码
        let sHeheView = LCSHeheView()
        addSubview(sHeheView)
        sHeheView.snp_makeConstraints { (make) in
            make.right.top.equalToSuperview()
            make.bottom.equalToSuperview().offset(-20)
            make.width.equalTo(100)
        }
    }
    private func addLCBoxView() {//主工程的Swift代码调用主工程OC代码
//        let boxView = LCBoxView()
//        addSubview(boxView)
    }
}
