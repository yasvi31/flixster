//
//  MovieDetailGridViewController.swift
//  flixster
//
//  Created by apple on 20/04/2020.
//

import UIKit
import AlamofireImage

class MovieDetailGridViewController: UIViewController {

    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        
        //delete after autolayout
        titleLabel.sizeToFit()
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        posterView.af.setImage(withURL: posterURL!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af.setImage(withURL: backdropURL!)
        backdropView.alpha = 0.5 //opacity
        //adding rounded corners
        backView.layer.cornerRadius = 30;
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        let movieTrailerVC = segue.destination as! MovieTrailerViewController
        let movie_id = movie["id"]!
        let trailerURL = "https://api.themoviedb.org/3/movie/\( movie_id)/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"
        
        // Pass the selected object to the new view controller.
        
        movieTrailerVC.videoURL = trailerURL
    }
    

}
