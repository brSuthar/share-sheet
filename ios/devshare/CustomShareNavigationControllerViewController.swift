//
//  CustomShareNavigationControllerViewController.swift
//  devshare
//
//  Created by Bhoma Ram on 18/01/24.
//

import UIKit

@objc(CustomShareNavigationController)
class CustomShareNavigationControllerViewController: UINavigationController {
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

      // 2: set the ViewControllers
      self.setViewControllers([CustomShareViewController()], animated: false)
  }

  @available(*, unavailable)
  required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
  }
}
