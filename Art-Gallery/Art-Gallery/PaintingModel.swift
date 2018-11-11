import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
   
    weak var PaintingViewController : PaintingViewController?
    
    var paintings: [Painting] = []
    
    override init() {
        for images in 1 ... 12 {
            let imageName = "image\(paintings)"
            guard let image = UIImage(name: imageName) else {return}
                let painting = Painting(image: image)
                paintings.append(painting)
        }
    }
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    
    
}
