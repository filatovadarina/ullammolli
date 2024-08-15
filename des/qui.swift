import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subview1 = UIView()
        let subview2 = UIView()
        let subview3 = UIView()
        
        subview1.backgroundColor = .red
        subview2.backgroundColor = .green
        subview3.backgroundColor = .blue
        
        [subview1, subview2, subview3].forEach { subview in
            subview.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            subview1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subview1.topAnchor.constraint(equalTo: view.topAnchor),
            subview1.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            subview2.leadingAnchor.constraint(equalTo: subview1.trailingAnchor),
            subview2.topAnchor.constraint(equalTo: view.topAnchor),
            subview2.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            subview2.widthAnchor.constraint(equalTo: subview1.widthAnchor),
            
            subview3.leadingAnchor.constraint(equalTo: subview2.trailingAnchor),
            subview3.topAnchor.constraint(equalTo: view.topAnchor),
            subview3.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            subview3.widthAnchor.constraint(equalTo: subview1.widthAnchor),
            subview3.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
