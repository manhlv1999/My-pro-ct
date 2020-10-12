//
//  NoitiPageViewController.swift
//  MyProject
//
//  Created by Le Manh on 10/1/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class NoitiPageViewController: UIPageViewController {

    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
            super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        }
        required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
        var pages = [UIViewController]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupUI()
            setupContraints()
            setViewIndex(index: 0)
            
        }
        func setupUI(){
            dataSource = self
            delegate = self
            let page1 = UINavigationController(rootViewController: TakeNotiViewController())
            let page2 = UINavigationController(rootViewController: ToSendNotiViewController())
            pages.append(page1)
            pages.append(page2)
        }
        func setupContraints(){
            NSLayoutConstraint.activate([
            ])
        }
        func setViewIndex(index: Int) {
            setViewControllers([pages[index]], direction: .forward, animated: true, completion: nil)
        }
    }
    extension NoitiPageViewController: UIPageViewControllerDelegate {
        func presentationCount(for pageViewController: UIPageViewController) -> Int {
            return pages.count
        }
    }
    extension NoitiPageViewController: UIPageViewControllerDataSource {
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            if let viewControllerIndex = pages.firstIndex(of: viewController) {
                if viewControllerIndex == 0 {
                    return pages.last
                }
                else {
                    return pages[viewControllerIndex - 1]
                }
            }
            return nil
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            if let viewControllerIndex = pages.firstIndex(of: viewController) {
                if viewControllerIndex < pages.count - 1 {
                    return pages[viewControllerIndex + 1]
                }
                else {
                    return pages.first
                }
            }
            return nil
        }
}
