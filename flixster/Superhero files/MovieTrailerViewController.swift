//
//  MovieTrailerViewController.swift
//  flixster
//
//  Created by apple on 20/04/2020.
//

import UIKit
import WebKit

class MovieTrailerViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    var videoURL: String!
    var videos = [[String:Any]]()
    var video: [String:Any]!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let myURL = URL(string: videoURL!)
        let request = URLRequest(url: myURL!)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
            if let error = error {
              print(error.localizedDescription)
            }
            else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                // TODO: Store the movies in a property to use elsewhere
                self.videos = dataDictionary["results"] as! [[String:Any]]
                self.video = self.videos[0]
                    
                let key = self.video["key"] as! String
                let youtubeURL = URL(string: "https://www.youtube.com/watch?v=\(key)")
                let myRequest = URLRequest(url: youtubeURL!)

                self.webView.load(myRequest)
           }
        }
        task.resume()
        
    
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
