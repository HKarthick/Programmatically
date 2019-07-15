

import UIKit

class TestViewController: UIViewController {
    
    lazy var nameLabel : UILabel = {
        let label = UILabel()
        label.text = "First"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nameLabel2 : UILabel = {
        let label2 = UILabel()
        label2.text = "Last"
        label2.translatesAutoresizingMaskIntoConstraints = false
        return label2
    }()
    
    
    lazy var textField : UITextField = {
       let textField = UITextField()
        textField.placeholder = "Enter the first name"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var textField2 : UITextField = {
        let textField2 = UITextField()
        textField2.placeholder = "Enter the Lat name"
        textField2.borderStyle = .roundedRect
        textField2.translatesAutoresizingMaskIntoConstraints = false
        return textField2
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        // self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(nameLabel)
        view.addSubview(textField)
        view.addSubview(nameLabel2)
        view.addSubview(textField2)
        
        setUpConstraints()
    }
    
    func setUpConstraints() {
        print(view.frame.height)
        print(view.frame.height/2)

        print(view.frame.width)

        print(view.frame.width/2)

        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height/4).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        textField.topAnchor.constraint(equalTo: nameLabel.topAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        textField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor,constant:10).isActive  = true
        textField.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true
        
        
        nameLabel2.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 30).isActive = true
        nameLabel2.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0).isActive = true
        
        textField2.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 30).isActive = true
        textField2.centerYAnchor.constraint(equalTo: nameLabel2.centerYAnchor, constant: 0).isActive = true
        textField2.leadingAnchor.constraint(equalTo: nameLabel2.trailingAnchor,constant:10).isActive  = true

        textField2.trailingAnchor.constraint(equalTo: textField.trailingAnchor).isActive = true


        

        
        
        
        
        
        
        
        
    }
}
