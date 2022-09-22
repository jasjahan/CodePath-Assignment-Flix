//
//  PosterDetailsViewController.swift
//  Flix
//
//  Created by Jasmine Jahan on 9/20/22.
//

import UIKit

class PosterDetailsViewController: UIViewController{

    @IBOutlet weak var posImg: UIImageView!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieDes: UILabel!
    
    
    
    var movie: [String: Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        movieName.text = movie["title"] as? String
        movieName.sizeToFit()
        movieDes.text = movie["overview"] as? String
        movieDes.sizeToFit()
        // Do any additional setup after loading the view.
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        movieImg.af_setImage(withURL: posterUrl!)
        
        let posPath = movie["backdrop_path"] as! String
        let posUrl = URL(string: "https://image.tmdb.org/t/p/w780" + posPath)
        posImg.af_setImage(withURL: posUrl!)
        
        
        
    }
    }

