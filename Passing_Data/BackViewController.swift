import UIKit

//declare protocol
protocol ReceiveData {
    func getData(data: String)
}

class BackViewController: UIViewController {
 
    //set delegate variable
    var delegate: ReceiveData?
    
    //variable to store input from firstViewTextField
    var data = ""

    @IBOutlet weak var secondViewLabel: UILabel!
    @IBOutlet weak var secondViewTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the label to inputted value from ForwardViewController
        secondViewLabel.text = data
    }

    @IBAction func passDataBackwardsButton(_ sender: Any) {
        delegate?.getData(data: secondViewTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
