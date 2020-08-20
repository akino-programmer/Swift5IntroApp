//
//  BaseViewController.swift
//  Swift5IntroApp
//
//  Created by 野口晃 on 2020/08/20.
//  Copyright © 2020 Akira Noguchi. All rights reserved.
//

import UIKit
import SegementSlide

class BaseViewController: SegementSlideDefaultViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData()
        scrollToSlide(at: 0, animated: true)

        // Do any additional setup after loading the view.
    }
    
    override func segementSlideHeaderView() -> UIView? {



    let headerView = UIImageView()

    headerView.isUserInteractionEnabled = true

    headerView.contentMode = .scaleAspectFill

    headerView.image = UIImage(named: "header")

    headerView.translatesAutoresizingMaskIntoConstraints = false

    let headerHeight: CGFloat

    if #available(iOS 11.0, *) {

    headerHeight = view.bounds.height/4+view.safeAreaInsets.top

    } else {

    headerHeight = view.bounds.height/4+topLayoutGuide.length

    }

    headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true

    return headerView



    }
    
    override var titlesInSwitcher: [String]{
        
        return ["TOP","Abemanews","Yahoo!!","IT","Buzz","CNN"]
        
    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        
        switch index{
            
        case 0:
            KMOD_RETURN_FAILURE
            
        }
        
        
    }
    
    
//    override var headerView: UIView?{
//
//        let headerView = UIImageView()
//        headerView.isUserInteractionEnabled = true
//        headerView.contentMode = .scaleToFill
//        headerView.image = UIImage(named: "")
//        headerView.translatesAutoresizingMaskIntoConstraints = false
//        let headerHeight:CGFloat
//        if #available(iOS 11.0, *){
//        headerHeight = view.bounds.height/4 + view.safeAreaInsets.top
//        }else{
//    headerHeight = view.bounds.height/4 + topLayoutGuide.length
//        }
//
//        headrView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
//        return headerView
//
//
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


