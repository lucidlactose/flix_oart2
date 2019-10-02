//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Lucid Lactose on 10/1/19.
//  Copyright © 2019 Lucid Lactose. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie: [String: Any]!
    
    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        let highBaseUrl = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: highBaseUrl + backdropPath)
        
        movieTitle.text = movie["title"] as? String
        movieDesc.text = movie["overview"] as? String
        posterView.af_setImage(withURL: posterUrl!)
        backdrop.af_setImage(withURL: backdropUrl!)

        // Do any additional setup after loading the view.
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
