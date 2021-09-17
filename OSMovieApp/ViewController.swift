//
//  ViewController.swift
//  OSMovieApp
//
//  Created by Gabriel Batista Cristiano on 16/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let posterView: UIView = {
        let posterView = UIView()
        posterView.translatesAutoresizingMaskIntoConstraints = false
        posterView.backgroundColor = .gray
        return posterView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        getMovieDetails()
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = .black
        view.addSubview(scrollView)
        
        let likeButton = UIButton(frame: CGRect(x: 350, y: 400, width: 20, height: 20))
        likeButton.backgroundColor = .yellow
        scrollView.addSubview(likeButton)
        
        let exampleButton = UIButton(frame: CGRect(x: 350, y: 1800, width: 20, height: 20))
        exampleButton.backgroundColor = .red
        scrollView.addSubview(exampleButton)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2000)
        
        scrollView.addSubview(posterView)
        addConstraints()
    }

    
    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        //Add constraints
        constraints.append(posterView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(posterView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(posterView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -380))
        constraints.append(posterView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        
        //Activate the constraints
        NSLayoutConstraint.activate(constraints)
    }
}

