import UIKit

let reuseIdentifier = "cell"

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
   
    weak var tableView : UITableView?
    
    var paintings: [Painting] = []
    
    override init() {
        for numbers in 1 ... 12 {
            let imageString = "Image\(numbers)"
            guard let image = UIImage(named: imageString) else {return}
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else {return}
        
        paintings[indexPath.row].isLiked.toggle()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? PaintingTableViewCell else {fatalError("cell is not guaranteed")
        }
        
        cell.delegate = self
        cell.view.image = paintings[indexPath.row].image
        let title = "👍🏽"
        
        return cell
    }
}
