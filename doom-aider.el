;; doom-aider.el --- Keybindings for Aider using Doom Emacs conventions -*- lexical-binding: t; -*-

(map! :leader
      :prefix ("l" . "aider")
      :desc "Run Aider" "a" #'aider-run-aider
      :desc "Batch Add Dired Marked Files" "b" #'aider-batch-add-dired-marked-files
      :desc "Debug Exception" "d" #'aider-debug-exception
      :desc "Code Change" "c" #'aider-code-change
      :desc "Explain Code in Selected Region" "e" #'aider-region-explain
      :desc "Add Current File" "f" #'aider-add-current-file
      :desc "Find Files in the Git Repo" "F" #'aider-repo-find-name-dired
      :desc "General Command" "g" #'aider-general-command
      :desc "Help" "h" #'aider-help
      :desc "Clear Aider" "l" #'aider-clear
      :desc "Show last commit with magit" "m" #'aider-magit-show-last-commit
      :desc "Send line under cursor" "n" #'aider-send-line-under-cursor
      :desc "Ask Question" "q" #'aider-ask-question
      :desc "Send paragraph" "p" #'aider-send-paragraph
      :desc "Refactor Code in Selected Region" "r" #'aider-region-refactor
      :desc "Open Git Repo Root Dired" "R" #'aider-git-repo-root-dired
      :desc "Reset Aider" "s" #'aider-reset
      :desc "Architect Discuss and Change" "t" #'aider-architect-discussion
      :desc "Undo Last Change" "u" #'aider-undo-last-change
      :desc "Add All Files in Current Window" "w" #'aider-add-files-in-current-window
      :desc "Switch to Aider Buffer" "z" #'aider-switch-to-buffer)
