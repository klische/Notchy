//
//  ExtraStuffPresentationDelegate.swift
//  Notchy
//
//  Created by Dan Loewenherz on 2/3/18.
//  Copyright © 2018 Lionheart Software LLC. All rights reserved.
//
//    This file is part of Notchy.
//
//    Notchy is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    Notchy is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with Notchy.  If not, see <https://www.gnu.org/licenses/>.

import Foundation
import Presentr

protocol ExtraStuffPresentationDelegate {
    var selectionFeedbackGenerator: UISelectionFeedbackGenerator { get }
    var extraStuffPresenter: Presentr { get }

    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
}

extension ExtraStuffPresentationDelegate {
    func displayExtraStuffViewController() {
        selectionFeedbackGenerator.selectionChanged()

        let controller = ExtraStuffViewController()
        controller.transitioningDelegate = extraStuffPresenter
        controller.modalPresentationStyle = .custom
        present(controller, animated: true, completion: nil)
    }
}
