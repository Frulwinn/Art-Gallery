import UIKit

class PaintingTableViewCell: UITableViewCell {

    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBOutlet weak var view: UIImageView!
    
    @IBAction func toggleAppreciation(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
        
   }
}
