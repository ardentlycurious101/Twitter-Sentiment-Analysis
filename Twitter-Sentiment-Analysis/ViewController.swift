//
//  ViewController.swift
//  Twitter-Sentiment-Analysis
//
//  Created by Elina Lua Ming on 8/8/19.
//  Copyright © 2019 Elina Lua Ming. All rights reserved.
//

import UIKit
import SwifteriOS
import CoreML
import SwiftyJSON

class ViewController: UIViewController {

    // IB Actions

    @IBOutlet weak var sentimentLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    let sentimentClassifier = TwitterSentimentClassifier()
    
    let swifter = Swifter(consumerKey: "MGIHRtKlQUiuZg3dl17MCZKXn", consumerSecret: "Lr865nxyGQsgkTOsvhyTDFEhTiKUP3qtvuykXfwI4s6tytsitA")

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func predictPressed(_ sender: UIButton) {
        
        if let searchText = searchTextField.text {
            
            swifter.searchTweet(using: searchText, lang : "en", count : 100 , tweetMode: .extended, success: { (results, metadata) in
                
                var tweets = [TwitterSentimentClassifierInput]()
                
                for i in 0..<100 {
                    if let tweet = results[i]["full_text"].string {
                        let tweetForClassification = TwitterSentimentClassifierInput(text: tweet)
                        tweets.append(tweetForClassification)
                    }
                }
                
                do {
                    let predictions = try self.sentimentClassifier.predictions(inputs: tweets)
                    
                    var sentimentScore = 0
                    
                    for prediction in predictions {
                        let sentiment = prediction.label
                        
                        if sentiment == "Pos" {
                            sentimentScore += 1
                        } else if sentiment == "Neg" {
                            sentimentScore -= 1
                        }
                    }
                    
                    print(sentimentScore)
                    
                } catch {
                    print("There was an error with making the prediction: \(error)")
                }
                
            }) { (error) in
                print("There was an error with the Twitter API request: \(error)")
            }
            
        }
        
    }
    

}

