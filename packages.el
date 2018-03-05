;;; packages.el --- org-chef layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Leslie Shawn Russell <lesliesrussell@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:
;; spacemacs layer for org-chef because I have been doing it the hard way and
;; Chobbes https://github.com/Chobbes/org-chef came up with an easy way.

;;; Code:

(defconst org-chef-packages
  '(org-chef)
        )

(defun org-chef/init-org-chef ()
  (use-package org-chef
    :ensure t
    )

  (setq org-capture-templates
        '(("c" "Cookbook" entry (file "~/org/cookbook.org")
           "%(org-chef-get-recipe-from-url)"
           :empty-lines 1)))
  )
;;; packages.el ends here
