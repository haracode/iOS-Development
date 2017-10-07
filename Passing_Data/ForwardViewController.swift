import UIKit

class ForwardViewController: UIViewController, ReceiveData {
    
    let segueName: String = "passDataForward"
    
    @IBOutlet weak var firstViewLabel: UILabel!
    @IBOutlet weak var firstViewTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Pushing data forwards using a Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Check if correct segue is being used
        if segue.identifier == segueName{
            //Create BackViewController destination Object
            let backVC = segue.destination as! BackViewController
            backVC.data = firstViewTextField.text!
            
            //set the delegate to this view controller
            backVC.delegate = self
        }
    }
    
    @IBAction func passDataForwardsButton(_ sender: Any) {
        performSegue(withIdentifier: segueName, sender: self)
    }
    
    //conform to RecieveData protocol
    func getData(data: String) {
        firstViewLabel.text = data
    }

}
