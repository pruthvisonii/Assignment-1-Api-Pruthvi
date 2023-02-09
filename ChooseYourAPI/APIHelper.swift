//
//  Pruthvi
//  Assignment 1 - Choose Api
//

import Foundation

class APIHelper {
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetch(urlString: String) {
        guard
            let url = URL(string: urlString)
        else{
            preconditionFailure("Unable to convert string to URL: \(urlString)")
        }
        
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do {
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    print(jsonData)
                } catch let error {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error with data task: \(error)")
            } else {
                print("Something went wrong: \(String(describing: response))")
            }
        }
        task.resume()
    }
}               