import UIKit

let reuseIdentifier = "cell"

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    weak var tableView : UITableView?
    
    var paintings: [Painting] = []
    
    override init() {
        for numbers in 1 ... 12 {
            let imageName = "Image\(numbers)"
            guard let image = UIImage(named: imageName) else {return}
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    //add the three core table delegate methods
    func viewWillAppear(_ animated: Bool) {
        tableView?.dataSource = self
        tableView?.delegate = self as? UITableViewDelegate
        tableView?.reloadData()
}
    
    //table view functions
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? PaintingTableViewCell else {fatalError("cell is not guaranteed")
        }
        
        cell.delegate = self
        cell.view.image = paintings[indexPath.row].image
       // let image orientation = portraitView //adding the painting image to the portraitView
        let title = "👍🏽"
        cell.likeButton?.setTitle(title, for: .normal)
        
        return cell
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell)
            else { fatalError("Non cell!") }
        
        paintings[indexPath.row].isLiked.toggle()

    }
}
