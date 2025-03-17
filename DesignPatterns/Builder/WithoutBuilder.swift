import Foundation

///MARK:- Network Call Without Using Builder Pattern
func normalApiCall(){
    guard let baseUrl = URL(string: "https://fakestoreapi.com/products") else {return}
    
    var request = URLRequest(url: baseUrl)
    
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.setValue("Bearer/ ABC123", forHTTPHeaderField: "Authorization")
    request.httpMethod = "GET"
    
    let body: [String: Any] = ["Name": "John", "Age": 25]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        
        guard let error = error else{
            print("No Error")
            return
        }
        
        if let data = data, let responseStr = String(data: data, encoding: .utf8) {
        print(responseStr)
        }
    }
    task.resume()
}

