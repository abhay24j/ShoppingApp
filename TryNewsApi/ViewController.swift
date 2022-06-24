//
//  ViewController.swift
//  TryNewsApi
//
//  Created by Abhay Kumar on 14/06/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    var newsModel: NewsArticle?
    @IBOutlet weak var newsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getData(fromUrlStr: "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=43f7ac6e8442468389c37766408e2028")
    }
    func getData(fromUrlStr:String){
        guard let url:URL = URL(string: fromUrlStr ) else  {
            print("Url is not found from \(fromUrlStr) ")
            return
        }
        let sessionTask = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
            print("Error Occurred while Accessing \(url) of type \(error.localizedDescription)")
            }
            if let response = response as? HTTPURLResponse {
                if (response.statusCode == 200) {
                    print ("response Successful")
                }
                if let responseData = data {
                    if let result = try? JSONDecoder().decode(NewsArticle.self, from: responseData){
                        print(result.articles.count)
                        self.newsModel = result
                        DispatchQueue.main.async {
                            self.newsTableView.reloadData()
                        }
                    }
                }
                
            }
        }
        sessionTask.resume()
    }
}
extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsModel?.articles.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for:indexPath) as! NewsTableViewCell
        guard let article = newsModel?.articles[indexPath.row] else {return cell}
        cell.titleLbl.text = article.title
        cell.authorLbl.text = article.author
        cell.articleDescriptionLbl.text = article.articleDescription
        return cell
    }
    
    
}








