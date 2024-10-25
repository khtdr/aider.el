;; doom-aider.el --- Keybindings for Aider using Doom Emacs conventions -*- lexical-binding: t; -*-


;; Let the user load Doom key mappings for Aider
(defun aider-doom-mappings ()
  (map! :leader
        :prefix ("l" . "aider")
        :desc "Aider: AI pair programming"

        (:prefix ("p" . "Process commands")
         :desc "Run Aider" "o" #'aider-run-aider
         :desc "Switch to Aider Buffer" "z" #'aider-switch-to-buffer
         :desc "Clear Aider" "l" #'aider-clear
         :desc "Reset Aider" "s" #'aider-reset
         :desc "Exit Aider" "x" #'aider-exit)

        (:prefix ("a" . "Adding files")
         :desc "Add Current File" "f" #'aider-add-current-file
         :desc "Add All Files in Current Window" "w" #'aider-add-files-in-current-window
         :desc "Batch Add Dired Marked Files" "b" #'aider-batch-add-dired-marked-files
         :desc "Find Files in the Git Repo" "g" #'aider-repo-find-name-dired
         :desc "Open Git Repo Root Dired" "d" #'aider-git-repo-root-dired)

        (:prefix ("r" . "Read-only context")
         :desc "Send Current File" "f" #'aider-read-current-file
         :desc "Send line under cursor" "l" #'aider-send-line-under-cursor
         :desc "Send paragraph" "p" #'aider-send-paragraph)

        (:prefix ("c" . "Code change")
         :desc "Code Change" "c" #'aider-code-change
         :desc "Refactor Code in Selected Region" "r" #'aider-region-refactor
         :desc "Undo Last Change" "u" #'aider-undo-last-change)

        (:prefix ("d" . "Discussion")
         :desc "Ask Question" "a" #'aider-ask-question
         :desc "Architect Discuss and Change" "c" #'aider-architect-discussion
         :desc "Explain Code in Selected Region" "e" #'aider-region-explain
         :desc "Debug Exception" "d" #'aider-debug-exception)

        (:prefix ("o" . "Other")
         :desc "General Command" "g" #'aider-general-command
         :desc "Help" "h" #'aider-help
         :desc "Show last commit with magit" "m" #'aider-magit-show-last-commit)))

(provide 'aider)
