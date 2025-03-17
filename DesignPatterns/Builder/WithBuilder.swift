
import Foundation

///MARK:- NetworkCall with Builder Pattern
///Builder
class RequestBuilder{
    private var url: URL?
    private var method: String = "GET"
    private var headers: [String: String] = [:]
    private var body: Data?
    
    func setUrl(urlStr: String) -> RequestBuilder {
        self.url = URL(string: urlStr)
        return self
    }
    
    func setMethod(method: String) -> RequestBuilder{
        self.method = method
        return self
    }
    
    func addHeaders(key: String, value: String) -> RequestBuilder {
        self.headers[key] = value
        return self
    }
    
    func setBody(body: [String: Any]) -> RequestBuilder {
        self.body = try? JSONSerialization.data(withJSONObject: body, options: [])
        return self
    }
    
    func build() -> URLRequest? {
        guard let baseUrl = self.url else {return nil}
        var request = URLRequest(url: baseUrl)
        request.httpMethod = self.method
        request.allHTTPHeaderFields = headers
        request.httpBody = body
        return request
    }
}

//Network Function (we can say Director - which uses Builder)
func builderApiCall(){
    guard let request = RequestBuilder()
        .setUrl(urlStr: "https://fakestoreapi.com/products")
        .setMethod(method: "GET")
        .build()
    else {return}
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("Error while Api Call")
        }
        
        if let urlResponse = response as? HTTPURLResponse {
            print("urlResonse: \(urlResponse)")
        }
        
        if let data = data, let jsonStr = String(data: data, encoding: .utf8){
            print("responseString: \(jsonStr)")
        }
    }
    task.resume()
}
