//
//  ViewController.swift
//  MengSMixedProgram
//
//  Created by menglingchao on 2020/12/17.
//

import UIKit
import SnapKit
import HeheKit
//import TestModulemap

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addLCHeheView()
        addBoxView()
        useC()
    }
    // MARK: -
    func addLCHeheView() {//主工程的swift代码调用pod里的OC代码
        let heheView = LCHeheView()
        view.addSubview(heheView)
        heheView.snp_makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(100)
            make.width.height.equalTo(100)
        }
    }
    func addBoxView() {//主工程的Swift代码调用主工程里的OC代码
//        let boxView = LCBoxView()
        
    }
    func useC() {//主工程的swift代码调用pod里的C代码
        HHJustPrintSome()
    }
}

