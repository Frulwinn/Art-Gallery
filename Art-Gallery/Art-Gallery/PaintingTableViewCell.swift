import UIKit

class PaintingTableViewCell: UITableViewCell {

    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var view: UIImageView!
    
    @IBAction func isLike(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
   }
}
