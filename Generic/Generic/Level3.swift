//
//  Generic
//  level3 제네릭 프로토콜
//
//  Created by 박준하 on 5/28/24.
//

import UIKit
import SnapKit

protocol Printable {
    func description() -> String
}

class Box2<T: Printable>: Printable {
    var value: T
    init(value: T) {
        self.value = value
    }
    
    func description() -> String {
        return value.description()
    }
}

class StringPrintable: Printable {
    var content: String
    init(content: String) {
        self.content = content
    }
    
    func description() -> String {
        return content
    }
}

class LevelViewController3: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let stringPrintable = StringPrintable(content: "Hello, World!")
        let box = Box2(value: stringPrintable)
        let label = UILabel()
        label.text = box.description()
        view.addSubview(label)
        
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
