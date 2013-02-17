;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
;(setq frame-title-format
;     (concat  " (%P) - emacs@" system-name))


;;display file path
;; display buffer name or absolute file path name in the frame title
;; Frame title bar formatting to show full path of file
     (setq-default mode-line-format
      (quote
       (#("-" 0 1
          (help-echo
           "mouse-1: select window, mouse-2: delete others ..."))
        mode-line-mule-info
        mode-line-modified
        mode-line-frame-identification
        ""
        mode-line-buffer-identification
	#("   %[(" 0 6
          (help-echo
           "mouse-1: select window, mouse-2: delete others ..."))
        (:eval (mode-line-mode-name))
        mode-line-process
        minor-mode-alist
        #("%n" 0 2 (help-echo "mouse-2: widen" local-map (keymap ...)))
        ")%] "
        (-3 . "%P")
        ;;   "-%-"
	" "
        (:eval (substring
                (system-name) 0 (string-match "\\..+" (system-name))))
        ":"
        default-directory
        #(" " 0 1
          (help-echo
           "mouse-1: select window, mouse-2: delete others ..."))
        (line-number-mode " Line %l ")
        global-mode-string
        
        )))



;set defual line spacding
(setq-default line-spacing 10)

;set scroll smoothy
(setq scroll-margin 3
     scroll-conservatively 10000)


(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(require 'lusty-explorer)

;open line number mode, and set the line number space to -3d,left align
(global-linum-mode t)
(setq linum-format "%-3d")

					;(setq tags-file-name "~/CVS/TAGS") ;set one TAG file
;(setq tags-table-list '("path1/TAGS" "path2/TAGS" "path3/TAGS"));;set several TAG files
;(setq tags-table-list '("~/CVS/TAGS"))
(global-linum-mode t)
;; TAGLIST-MODE ---------------------------------------------------------------
(require 'taglist)
(global-set-key "\C-xtg" 'taglist)


;load-path
;(add-to-list 'load-path "/home/yourname/.emacsLoadpath")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(column-number-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t))

(setq visible-bell t);关闭出错时的蜂鸣提示声
;(mouse-avoidance-mode'animate);当鼠标箭头与光标相近时，使鼠标箭头自动移开
;(blink-cursor-mode nil);光标不闪烁
(setq-default cursor-type 'bar);光标显示为一竖线
;(tool-bar-mode -1);; 不显示emcas的工具栏
;(menu-bar-mode -1);; 不显示emcas的菜单栏,按ctrl+鼠标右键仍能调出该菜单
(setq x-select-enable-clipboard t);; 支持emacs和外部程序之间进行粘贴
(fset 'yes-or-no-p 'y-or-n-p);以 'y/n'字样代替原默认的'yes/no'字样
;(setq frame-title-format "%b----------****###@emacs");在最上方的标题栏显示当前buffer的名字
(setq make-backup-files nil);关闭自动备份功能
(setq auto-save-mode nil);关闭自动保存模式
(setq auto-save-default nil);不生成名为#filename# 的临时文件
(setq require-final-newline t);; 自动的在当前的buffer文件的最后加一个空行
(global-set-key "\r" 'align-newline-and-indent);;自动缩进<C-j>变为<Enter>
(setq echo-keystrokes 0.1);; 尽快显示按键序列提示
(global-font-lock-mode t);; 语法高亮
;; 用来显示当前光标在哪个函数
(require 'which-func)
(which-func-mode 1)
(setq which-func-unknown "unknown")
;; 用M-x执行某个命令的时候，在输入的同时给出可选的命令名提示
(icomplete-mode 1)
(define-key minibuffer-local-completion-map (kbd "SPC") 'minibuffer-complete-word)

(global-hl-line-mode 1);;高亮当前行

;;;;;;;;;;;;;;;;;启动时最大化;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)
;下载maxframe.el并放置在<load-path>中
;http://files.emacsblog.org/ryan/elisp/maxframe.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;web方式显示行号;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(set-scroll-bar-mode 'right);滚动条在右侧
(set-scroll-bar-mode nil)   ; 不显示滚动条, even in x-window system (recommended)
(require 'wb-line-number)
;(wb-line-number-toggle)
;下载wb-line-number.el并放置在<load-path>中
;http://homepage1.nifty.com/blankspace/emacs/elisp.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;cc-mode;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/home/zhangchao08/program_files/emacs-24.2/share/emacs/site-lisp/cc-mode-5.32.3")
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)
;http://sourceforge.net/projects/cc-mode/?source=directory
;http://www.kklinux.com/html/linuxwangluojishu/linuxxitongguanliyuan/200902/28-3728.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "/home/zhangchao08/program_files/emacs-24.2/share/emacs/site-lisp/emacs-dirtree-master")
(require 'tree-mode)
(require 'windata)
(require 'dirtree)
(autoload 'dirtree "dirtree" "Add directory to tree view" t)
(global-set-key [f2] 'dirtree-show)

;(global-set-key [M-left] 'windmove-left)          ; move to left windnow
;(global-set-key [M-right] 'windmove-right)        ; move to right window
;(global-set-key [M-up] 'windmove-up)              ; move to upper window
;(global-set-key [M-down] 'windmove-down)          ; move to downer window


;(global-set-key [?\C-=] 'make-symbolic-link)
;(global-set-key [?\M-\C-=] 'make-symbolic-link)
;(global-set-key [?\H-a] 'make-symbolic-link)
;(global-set-key [f7] 'make-symbolic-link)
;(global-set-key [C-mouse-1] 'make-symbolic-link)

;set the tarbar plugin
;http://wikemacs.org/wiki/Tabbar
(require 'tabbar)
(tabbar-mode t)
;(global-set-key (kbd "C-c C-n")  'tabbar-forward)
;(global-set-key (kbd "C-c C-p")  'tabbar-backward)

; define all tabs to be one of 3 possible groups: “Emacs Buffer”, “Dired”,
;“User Buffer”	.	

(defun tabbar-buffer-groups ()
    "Return the list of group names the current buffer belongs to		.	
This function is a custom function for tabbar-mode's tabbar-buffer-groups	.	
This function group all buffers into 3 groups:
Those Dired, those user buffer, and those emacs buffer				.	
Emacs buffer are those starting with “*”					.	"
      (list
          (cond
       ((string-equal "*" (substring (buffer-name) 0 1))
	     "Emacs Buffer"
	          )
	           ((eq major-mode 'dired-mode)
		         "Dired")
		       (t  "User Buffer"))))

(setq tabbar-buffer-groups-function 'tabbar-buffer-groups)

;(global-set-key [c-c-b] 'tabbar-backward)
;(global-set-key [c-c-f] 'tabbar-forward)




(global-set-key [(meta p)] 'tabbar-backward)
(global-set-key [(meta n)] 'tabbar-forward)

;; 设置tabbar外观
;; 设置默认主题: 字体, 背景和前景颜色，大小
;(set-face-attribute 'tabbar-default-face nil
;		    :family "DejaVu Sans Mono"
;		    :background "gray80"
;		    :foreground "gray30"
;		    :height 1.0
;		    )
;; 设置左边按钮外观：外框框边大小和颜色
;(set-face-attribute 'tabbar-button-face nil
;		    :inherit 'tabbar-default
;		    :box '(:line-width 1 :color "yellow70")
;		    )
;; 设置当前tab外观：颜色，字体，外框大小和颜色
;(set-face-attribute 'tabbar-selected-face nil
;		    :inherit 'tabbar-default
;		    :foreground "DarkGreen"
;		    :background "LightGoldenrod"
;		    :box '(:line-width 2 :color "DarkGoldenrod")
;		    :overline "black"
;		    :underline "black"
;		    :weight 'bold
;		    )
;; 设置非当前tab外观：外框大小和颜色
;(set-face-attribute 'tabbar-unselected-face nil
;		    :inherit 'tabbar-default
;		    :box '(:line-width 20 :color "#00B2BF")
;		    )

;***********************************************************************
;(set-face-background 'default "gainsboro");背景设定
;颜色参考value：X界面菜单栏中[edit]->[text properties]->[Display colors]

;未完其他内容在本文的后续部分介绍
;session
;global(GNU GLOBAL source code tag system)
;##cedet(Collection of Emacs Development Environment Tools)
;##ecb(Emacs Code Browser)
;##doxymacs
;##compile

;##GDB

;##global(GNU GLOBAL source code tag system);;;;;;;;;;;;;;;;;;;;;
;to use global from Emacs, you need to load the `gtags.el' and execute gtags-mode function in it.
;you need to add it to load-path.for `gtags.el'file.

(setq load-path (cons "/home/zhangchao08/program_files/global-6.2.7/share/gtags/" load-path))
;(add-to-list 'load-path "/home/zhangchao08/program_files/global-6.2.7/share/gtags/");已经在之前的代码中load完了
;(require 'gtags)
(autoload 'gtags-mode "gtags" "" t);;start Emacs and execute gtags-mode function.
(setq c-mode-hook
            '(lambda ()
            (gtags-mode 1)));get into gtags-mode whenever you get into c-mode
(setq c++-mode-hook
      '(lambda ()
	 (gtags-mode 1)))
(setq java-mode-hook
      '(lambda ()
	 (gtags-mode 1)))


;(add-hook 'c-mode-common-hook
;	            '(lambda()
;                   (gtags-mode 1)
;                (gtags-make-complete-list)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setenv "PATH" (concat (getenv "PATH") ":/home/zhangchao08/program_files/global-6.2.7/bin"))
(setq exec-path (append exec-path '("/home/zhangchao08/program_files/global-6.2.7/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/home/zhangchao08/program_files/idutils-4.6/bin"))
(setq exec-path (append exec-path '("/home/zhangchao08/program_files/idutils-4.6/bin")))



;(set-face-background 'default "LightCyan3") ;;设置背景色为 浅青色3 
;(global-set-key (kbd "C-x C-b") 'ibuffer)
;(defalias 'ft 'gtags-find-tag)
;(global-set-key (kbd "C-c C-t") 'gtags-find-tag)
(global-set-key (kbd "C-]") 'gtags-find-tag)
(global-set-key (kbd "C-o") 'gtags-pop-stack)
(setq gtags-suggested-key-mapping t)
(setq gtags-prefix-key "\C-c")

;up directory short cut
(global-set-key (kbd "\C-c u") 'dired-up-directory)

;----------------------------------

(global-ede-mode 1)
;(require 'semantic/sb)
(semantic-mode 1)


;**********************idutils*********************************************
(add-to-list 'load-path "/home/zhangchao08/program_files/idutils-4.6/share/emacs/site-lisp")
(require 'idutils)

;http://www.ysbl.york.ac.uk/~emsley/software/stuff/uniquify.el
;show full path name
;(require 'uniquify)
;(setq uniquify-buffer-name-style 'reverse)

;(setq uniquify-buffer-name-style 'forward)
;(require 'uniquify)

;(setq display-time-day-and-date t
;      display-time-24hr-format t)
;(display-time)


