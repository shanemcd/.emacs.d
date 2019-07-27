# .emacs.d

This is my emacs config. If you're curious, here's a bit about how it works:

`init.el` is the first file loaded by emacs. This is normally where you would
store your configuration.

Rather than storing our code here directly, we have this:

```emacs-lisp
(org-babel-load-file "~/.emacs.d/config.org")
```

The code sections of this file are evaluated when emacs starts as if they were in-line.
