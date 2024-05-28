//
//  Generic
//  level2 제네릭 클래스
//
//  Created by 박준하 on 5/28/24.
//
import UIKit
import SnapKit
import Foundation

class Box<T> {
    var value: T
    init(value: T) {
        self.value = value
    }
}

class LevelViewController2: UIViewController {
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
           
        attribute()
        layout()
        let box = Box<String>(value: "!")
        label.text = "\(box.value)"
    }
    
    func attribute() {
        view.backgroundColor = .white
    }
    
    func layout() {
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
