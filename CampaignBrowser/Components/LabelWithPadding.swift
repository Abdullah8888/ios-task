import UIKit


/**
 A custom label that has some padding between its frame and its displayed text. Configurable in Interface Builder.
 */
@IBDesignable
class LabelWithPadding: UILabel {

    /** The padding (in points). Will be added to all edges. */
    //@IBInspectable var topPadding: CGFloat = 0
    @IBInspectable var leftPadding: CGFloat = 8
    //@IBInspectable var bottomPadding: CGFloat = 0
    @IBInspectable var rightPadding: CGFloat = 8

    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: UIEdgeInsets(top: 0, left: leftPadding, bottom: 0, right: rightPadding)))
    }

    override var intrinsicContentSize: CGSize {
        let originalSize = super.intrinsicContentSize
        return CGSize(width: originalSize.width + leftPadding + rightPadding, height: originalSize.height)
    }
}
