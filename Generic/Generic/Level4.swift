//
//  Generic
//  level4 제네릭과 타입 제약
//
//  Created by 박준하 on 5/28/24.
//

import Foundation
import UIKit
import SnapKit

protocol Summable {
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Summable {}
extension Double: Summable {}

func add<T: Summable>(a: T, b: T) -> T {
    return a + b
}

class LevelViewController4: UIViewController {
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        attirbute()
        layout()
        label.text = "\(add(a: 10, b: 20))"
    }
    
    func attirbute() {
        view.backgroundColor = .white
    }
    
    func layout() {
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
