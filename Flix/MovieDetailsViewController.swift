//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Jasmine Jahan on 9/19/22.
//

import UIKit
import Alamofire
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var posterview: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var synopsislabel: UILabel!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        titlelabel.text = movie["title"] as? String
        titlelabel.sizeToFit()
        
        synopsislabel.text = movie["overview"] as? String
        synopsislabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterview.af_setImage(withURL: posterUrl!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdrop.af_setImage(withURL: backdropUrl!)
    }
}
