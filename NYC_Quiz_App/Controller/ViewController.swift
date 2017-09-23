import UIKit


class QuizController: UIViewController {
    
    //Set the connections to the screen labels and views
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet var progressBar: UIView!

    
    let allQuestions = Questions()
    var selectedAnswer: Bool = false
    var questionNum: Int = 0
    var totalScore: Int = 0
    
    //Update User Interface on App Startup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func selectedAnswerQ(_ sender: AnyObject) {
        //Set buttons for True and False
        if sender.tag == 1 {
            selectedAnswer = true
        }
        else if sender.tag == 2 {
            selectedAnswer = false
        }
        
        checkAnswer()
        questionNum += 1

        updateUI()
    }
    
    
    //function for displaying user's total score and increasing the progess bar
    func updateUI() {
        //Increase the progress by factors of 10
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNum)
        progressLabel.text = String(questionNum) + "/10"
        
        scoreLabel.text = "Score: " + String(totalScore)
        
        nextQuestion()
    }
    

    func nextQuestion() {
        //Check if user compeleted quiz, if so alert for restarting
        if questionNum <= 9 {
            questionLabel.text = allQuestions.questionBank[questionNum].questionText
        } else {
            let alert = UIAlertController(title: "Awesome", message: "Quiz Completed! Try again?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
                UIAlertAction in self.restartQuiz()
            }))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        //Check answer
        let correctAnswer = allQuestions.questionBank[questionNum].answer
        
        //Increase the score if answer is correct
        if selectedAnswer == correctAnswer {
            ProgressHUD.showSuccess("Correct!")
            totalScore += 1
        } else {
            ProgressHUD.showError("Incorrect!")
        }
        
    }
    
    
    func restartQuiz() { 
        totalScore = 0
        questionNum = 0
        
        updateUI()
    }
    
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}

