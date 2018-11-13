//
//  MusicTableViewCell.swift
//  musicApp
//
//  Created by Nathan Ranghel on 19/10/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit

let textLableTest = "Neverland"
let textTextviewTest = ("Houve uma época em que eu estava sozinho" +
                        "Nenhum lugar pra ir ou chamar de lar" +
    "Meu único amigo era o homem na lua" +
    "E até mesmo ele às vezes ia embora também" +
    "Então, uma noite, quando eu fechei meus olhos" +
    "Eu vi uma sombra voando alto" +
    "Ele veio a mim com o sorriso mais doce" +
    "Disse-me que queria conversar por algum tempo" +
    "Ele disse: Peter Pan, é como me chamam" +
    "Eu prometo que você nunca estará sozinha" +
    "E desde aquele dia")

var imageTest : UIImage = UIImage(named: "ic_more_horiz")!

class MusicTableViewCell: UITableViewCell {
    
    
    var imageViewBackground : UIView = {
       var view =  UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = false
        
        return view
    }()
    
    var mainImageView : UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "album")
        
        return imageView
    }()

    var mainLabel : UILabel = {
        var lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize : 17)
        lable.text = textLableTest

        return lable
    }()
    
    var textView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textColor = UIColor.lightGray
        textView.font = UIFont.systemFont(ofSize : 12)
        
        textView.text = textTextviewTest
        
        textView.isEditable = false
        textView.isUserInteractionEnabled = false
        
        return textView
    }()
    
    var moreBtn : UIButton = {
        var button = UIButton(type:UIButton.ButtonType.custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(imageTest,for: .normal)
       
        button.contentMode = .scaleAspectFit
        return button
    }()
    
    var spacingConstant : CGFloat = 10
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.imageViewBackground.addSubview(mainImageView)
        self.addSubview(imageViewBackground)
        self.addSubview(mainLabel)
        self.addSubview(textView)
        self.addSubview(moreBtn)
    }
    
    override func layoutSubviews() {
        
        
        mainImageView.layer.cornerRadius = 5
        
        mainImageView.leftAnchor.constraint(equalTo: imageViewBackground.leftAnchor).isActive = true
        mainImageView.rightAnchor.constraint(equalTo: imageViewBackground.rightAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
      
        imageViewBackground.leftAnchor.constraint(equalTo: self.leftAnchor,constant : spacingConstant).isActive = true
        imageViewBackground.topAnchor.constraint(equalTo: self.topAnchor ,constant :
            spacingConstant).isActive = true
        imageViewBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant:
            -spacingConstant).isActive = true
        imageViewBackground.widthAnchor.constraint(equalTo: self.imageViewBackground.heightAnchor).isActive = true
        
        mainLabel.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor,constant :
            spacingConstant).isActive = true
        mainLabel.topAnchor.constraint(equalTo: imageViewBackground.topAnchor).isActive = true
        mainLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        mainLabel.rightAnchor.constraint(equalTo: moreBtn.leftAnchor,constant :
            -spacingConstant).isActive = true
        
        textView.leftAnchor.constraint(equalTo: imageViewBackground.rightAnchor,constant :
            spacingConstant).isActive = true
        textView.bottomAnchor.constraint(equalTo: imageViewBackground.bottomAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor,constant :
            spacingConstant - 5).isActive = true
        textView.rightAnchor.constraint(equalTo: self.rightAnchor,constant :
            -spacingConstant).isActive = true
        
        moreBtn.rightAnchor.constraint(equalTo: self.rightAnchor,constant :
            -spacingConstant).isActive = true
        moreBtn.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        moreBtn.bottomAnchor.constraint(equalTo: self.textView.topAnchor).isActive = true
    
    
    }
  
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
