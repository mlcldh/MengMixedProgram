//
//  HeheView.swift
//  LCSKit
//
//  Created by menglingchao on 2020/12/16.
//

import UIKit
import SnapKit
import MLCKit

public class LCSHeheView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .orange
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: -
    func addLCHeheView() {//pod里的Swift代码调用自己pod里的OC代码
        let heheView = LCHeheView()
        addSubview(heheView)
        heheView.snp_makeConstraints { (make) in
            make.left.top.equalToSuperview()
            make.bottom.equalToSuperview().offset(-20)
            make.width.equalTo(100)
        }
    }
    func addMLCLabelView() {//pod里的Swift代码调用其他pod里的OC代码
        let labelView = MLCLabelView()
        addSubview(labelView)
        labelView.snp_makeConstraints { (make) in
            
        }
    }
}
