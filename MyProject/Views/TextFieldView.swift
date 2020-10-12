
import UIKit

class TextFieldView: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.borderStyle = .roundedRect
        self.heightAnchor.constraint(equalToConstant: 44).isActive = true
        self.textAlignment = .center
        self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
