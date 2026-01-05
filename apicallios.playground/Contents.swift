import UIKit

func fetchData (source : String , completion : @escaping @Sendable (Result<Data,Error>) -> Void ){
    guard let url = URL(string : source ) else{
        print("url conversion failed")
        completion( .failure(NSError(domain: "Invalid URL", code: 3)))
        return
    }
    
    URLSession.shared.dataTask(with: url) { data , response ,error in
        if let error = error {
            completion(.failure(error))
            return
        }
        
        guard let data = data else{
            completion(.failure(NSError(domain: "No data", code: 4)))
            return
        }
        completion(.success(data))
        
    }.resume()
}

fetchData(source: "https://jsonplaceholder.typicode.com/posts/1") {result  in
    switch result {
    case .success(let data):
            print(data)
        if let datainstring = String(data: data, encoding: .utf8){
            print(datainstring)
        }else{
            print("not a valid string")
        }
    case .failure(let error):
            print(error.localizedDescription)
    }
    
}
