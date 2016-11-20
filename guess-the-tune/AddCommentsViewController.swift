//
//  AddCommentsViewController.swift
//  guess-the-tune
//
//  Created by Adam Goth on 11/19/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class AddCommentsViewController: UIViewController, UITextViewDelegate {
    
    var genre: String!
    
    var comments: UITextView!
    let placeholder = "If you have any additional comments that might help identify your tune, enter them here"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Comments"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(submitTapped))
        comments.text = placeholder
    }
    
    func submitTapped() {
        let vc = SubmitViewController()
        vc.genre = genre
        
        if comments.text == placeholder {
            vc.comments = ""
        } else {
            vc.comments = comments.text
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func loadView() {
        super.loadView()
        
        comments = UITextView()
        comments.translatesAutoresizingMaskIntoConstraints = false
        comments.delegate = self
        comments.font = UIFont.preferredFont(forTextStyle: .body)
        view.addSubview(comments)
        
        comments.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        comments.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        comments.topAnchor.constraint(equalTo: topLayoutGuide.topAnchor).isActive = true
        comments.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor).isActive = true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == placeholder {
            textView.text = ""
        }
    }

}
