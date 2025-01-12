//
//  JKAlertViewControllerViewController.swift
//  JKSwiftExtension_Example
//
//  Created by 王冲 on 2023/5/25.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

//MARK: - 弹框
import Foundation
import JKSwiftExtension

class JKAlertViewControllerViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        headDataArray = ["一、弹框(描述信息是：基本文本) - 样式card", "二、弹框(描述信息是：基本文本) - 样式system", "三、弹框(描述信息是：富文本)- 样式card", "四、弹框(描述信息是：富文本)- 样式system"]
        dataArray = [["标题/描述/确定/取消", "标题/描述/确定1/确定2/取消", "描述/确定/取消", "标题/确定/取消", "标题/确定", "确定/取消"], ["标题/描述/确定/取消", "标题/描述/确定1/确定2/取消", "描述/确定/取消", "标题/确定/取消", "确定/取消"], ["标题/描述/确定/取消", "描述/确定1/确定2/取消", "描述/确定/取消"], ["标题/描述/确定/取消", "描述/确定1/确定2/取消", "描述/确定/取消"]]
    }
}

//MARK: - 四、弹框(描述信息是：富文本) - 样式system
extension JKAlertViewControllerViewController {
    
    //MARK: 4.3、描述/确定/取消
    @objc func test43() {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 6
        let attributedString = NSMutableAttributedString(string: "予观夫巴陵胜状注，在洞庭一湖。衔远山，吞长江，浩浩汤汤，横无际涯注，朝晖夕阴注，气象万千，此则岳阳楼之大观也注，前人之述备矣注。").color(.green).font(UIFont.systemFont(ofSize: 22)).kern(20).paragraphStyle(style)
        let alert = JKAlertViewController(attributedMessage: attributedString, arrangementDirectionStyle: .horizontal, alertStyle: .system)
        alert.backgroundTouchIsEnabled = true
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 4.2、描述/确定1/确定2/取消
    @objc func test42() {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 6
        let attributedString = NSMutableAttributedString(string: "予观夫巴陵胜状注，在洞庭一湖。衔远山，吞长江，浩浩汤汤，横无际涯注，朝晖夕阴注，气象万千，此则岳阳楼之大观也注，前人之述备矣注。").color(.green).font(UIFont.systemFont(ofSize: 22)).kern(20).paragraphStyle(style)
        let alert = JKAlertViewController(attributedMessage: attributedString, arrangementDirectionStyle: .horizontal, alertStyle: .system)
        alert.backgroundTouchIsEnabled = true
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction1 = JKAlertAction(title: "确定1", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定1......")
        }
        let sureAction2 = JKAlertAction(title: "确定2", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定2......")
        }
        alert.addAction(sureAction1)
        alert.addAction(sureAction2)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 4.1、标题/描述/确定/取消
    @objc func test41() {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 6
        let attributedString = NSMutableAttributedString(string: "予观夫巴陵胜状注，在洞庭一湖。衔远山，吞长江，浩浩汤汤，横无际涯注，朝晖夕阴注，气象万千，此则岳阳楼之大观也注，前人之述备矣注。").color(.green).font(UIFont.systemFont(ofSize: 22)).kern(20).paragraphStyle(style)
        let alert = JKAlertViewController(title: "标题", attributedMessage: attributedString, arrangementDirectionStyle: .horizontal, alertStyle: .system)
        alert.backgroundTouchIsEnabled = true
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}


//MARK: - 三、弹框(描述信息是：富文本) - 样式card
extension JKAlertViewControllerViewController {
    
    //MARK: 3.3、描述/确定/取消
    @objc func test33() {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 6
        let attributedString = NSMutableAttributedString(string: "予观夫巴陵胜状注，在洞庭一湖。衔远山，吞长江，浩浩汤汤，横无际涯注，朝晖夕阴注，气象万千，此则岳阳楼之大观也注，前人之述备矣注。").color(.green).font(UIFont.systemFont(ofSize: 22)).kern(20).paragraphStyle(style)
        let alert = JKAlertViewController(attributedMessage: attributedString, arrangementDirectionStyle: .horizontal)
        alert.backgroundTouchIsEnabled = true
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 3.4、描述/确定1/确定2/取消
    @objc func test32() {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 6
        let attributedString = NSMutableAttributedString(string: "予观夫巴陵胜状注，在洞庭一湖。衔远山，吞长江，浩浩汤汤，横无际涯注，朝晖夕阴注，气象万千，此则岳阳楼之大观也注，前人之述备矣注。").color(.green).font(UIFont.systemFont(ofSize: 22)).kern(20).paragraphStyle(style)
        let alert = JKAlertViewController(attributedMessage: attributedString, arrangementDirectionStyle: .horizontal)
        alert.backgroundTouchIsEnabled = true
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction1 = JKAlertAction(title: "确定1", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定1......")
        }
        let sureAction2 = JKAlertAction(title: "确定2", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定2......")
        }
        alert.addAction(sureAction1)
        alert.addAction(sureAction2)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 3.1、标题/描述/确定/取消
    @objc func test31() {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 6
        let attributedString = NSMutableAttributedString(string: "予观夫巴陵胜状注，在洞庭一湖。衔远山，吞长江，浩浩汤汤，横无际涯注，朝晖夕阴注，气象万千，此则岳阳楼之大观也注，前人之述备矣注。").color(.green).font(UIFont.systemFont(ofSize: 22)).kern(20).paragraphStyle(style)
        let alert = JKAlertViewController(title: "标题", attributedMessage: attributedString, arrangementDirectionStyle: .horizontal)
        alert.backgroundTouchIsEnabled = true
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}

//MARK: - 二、弹框(描述信息是：基本文本) - 样式system
extension JKAlertViewControllerViewController {
    
    //MARK: 2.5、确定/取消
    @objc func test25() {
        let alert = JKAlertViewController(alertStyle: .system)
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 2.4、标题/确定/取消
    @objc func test24() {
        let alert = JKAlertViewController(title: "标题", alertStyle: .system)
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 2.3、描述/确定/取消
    @objc func test23() {
        let alert = JKAlertViewController(message: "描述信息", alertStyle: .system)
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 2.2、标题/描述/确定1/确定2/取消
    @objc func test22() {
        let alert = JKAlertViewController(title: "标题", message: "描述信息", alertStyle: .system)
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction1 = JKAlertAction(title: "确定1", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定1......")
        }
        let sureAction2 = JKAlertAction(title: "确定2", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定2......")
        }
        alert.addAction(sureAction1)
        alert.addAction(sureAction2)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    //MARK: 2.1、标题/描述/确定/取消
    @objc func test21() {
        let alert = JKAlertViewController(title: "标题", message: "描述信息", alertStyle: .system)
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}

//MARK: - 一、弹框(描述信息是：基本文本) - 样式card
extension JKAlertViewControllerViewController {
    
    //MARK: 1.6、确定/取消
    @objc func test16() {
        let alert = JKAlertViewController()
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 1.5、标题/确定
    @objc func test15() {
        let alert = JKAlertViewController(title: "标题")
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 1.4、标题/确定/取消
    @objc func test14() {
        let alert = JKAlertViewController(title: "标题")
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 1.3、描述/确定/取消
    @objc func test13() {
        let alert = JKAlertViewController(message: "描述信息")
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
   
    //MARK: 1.2、标题/描述/确定1/确定2/取消
    @objc func test12() {
        let alert = JKAlertViewController(title: "标题", message: "描述信息")
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction1 = JKAlertAction(title: "确定1", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定1......")
        }
        let sureAction2 = JKAlertAction(title: "确定2", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定2......")
        }
        alert.addAction(sureAction1)
        alert.addAction(sureAction2)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: 1.1、标题/描述/确定/取消
    @objc func test11() {
        let alert = JKAlertViewController(title: "标题", message: "描述信息")
        let cancelAction = JKAlertAction(title: "取消", style: .blue)
        let sureAction = JKAlertAction(title: "确定", style: .cancel) { (action: JKAlertAction) in
            debugPrint("确定......")
        }
        alert.addAction(sureAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}
