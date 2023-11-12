import UIKit

class NumberPuzzleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .gray
        
        let imageView = UIImageView(image: UIImage(named: "NumberBoard"))
        imageView.frame = view.bounds
        let businessLogic = BusinessLogic()
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
//        let side = view.
    }


}

