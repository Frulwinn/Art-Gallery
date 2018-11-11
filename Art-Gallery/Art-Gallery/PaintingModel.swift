import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
   
    weak var PaintingViewController : PaintingViewController?
    var paintings: [Painting] = []
    
    override init() {
        for images in 1 ... 12 {
            let imageName = "Image\(paintings)"
            guard let image = UIImage(named: imageString) else {return}
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    
    
}
