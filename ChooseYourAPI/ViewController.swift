//
//  Pruthvi
//  Assignment 1 - Choose Api
//


import UIKit

class ViewController: UIViewController {
    
    private let apiHelper = APIHelper()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Button Actions
    @IBAction func handleAPICall(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("JSON API for hand curated Chuck Norris jokes	")
            apiHelper.fetch(urlString: "https://api.chucknorris.io/")
        case 2:
            print("REST API for Corporate Buzz Words")
            apiHelper.fetch(urlString: "https://randomuser.me/api/")
        case 3:
            print("	Gets an array of popular memes")
            apiHelper.fetch(urlString: "https://api.imgflip.com/get_memes")
        default:
            break
        }
    }
}