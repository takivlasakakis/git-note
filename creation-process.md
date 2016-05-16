# Where is this going?

* uniform code snippets for note creation
* matching file structure between git-note and bookmarks
* naming/title convention for notes
* naming/title convention for bookmarks
* how do I write scripts for sublime or google?
* note taking workspace

## AdvancedNewFile Notes
* when tabbing through can we have the / be included so you can start typing the name right away
    * open issue on gh

## workflow with git
* how can I rename the quiltimport alias so it won't conflict with my custom alias

## Bookmarks
how to search through bookmarks directories

## sublime git
sublime.log_commands(True)
sublime.log_commands(False)
command: git_raw {"command": "git add -A"}
['git', 'add', '-A']
reverting

* manually do git commands
* try creating plugins for each one
* write stack overflow question about combining them



## Alfred video
* opening sublime project
* opening terminal
* finding directories
* jumping to repos on git
* searching google
* searching through bookmarks
* time zone
* evernote search
* using dash
* quitting programs


## Chaining git commands together stack overflow post
I'm using the [sublime-text-git](https://github.com/kemayo/sublime-text-git) plugin. the `Git: Add All`, `git_quick_commit`, and `Git: Push` command all work great independently but I'm trying to link them together to ultimately create something of a `sync` command.

Some of the issues I'm running into are:

1. I'm not sure how to tell if a command is a WindowCommand or a ViewCommand

It looks like this is an old issue; however, I really do think that being able to Add All Files and then Quick 
Commit in one command would be a great feature. I've been trying to do this for about two days using `sublime.log_commands(True)` and trying to chain together `window.run_command("git_raw", {"command":"git add -A"})`  and `view.run_command("git_quick_commit")` in a plugin and then adding the plugin to the command palette

git_add_then_quick_commit.py

    import sublime, sublime_plugin
    
    class GitAddThenQuickCommitCommand(sublime_plugin.WindowCommand):
        def run(self):
            self.window.run_command("git_raw", {"command":"git add -A"})
            self.view.run_command("git_quick_commit")

Default.sublime-commands


    [
        // Define your custom Sublime commands here
        // Format is same as `key bindings` except replace `keys` with `caption`
        {
            // Name to show in Command Palette
            "caption": "Git: Add Then Quick Commit",
            // Command to invoke
            "command": "git_add_then_quick_commit",
            // Optional keyword arguments to provide to command
            //"args": {"key": "value"}
        }
    ]
    
The problem that I'm running into is: the command to "Git: Add All" is a "window" command and the command to "Git: Quick Commit" is a "view" command. I'm ne

w to making plugins so I might be saying this wrong, but the main question I'm wondering is: How can I chain together those two commands? Thanks for your help! Also by the way, thanks for such a rad plugin, I've been using it a ton and it definitely helps :)


## trying to talk to sublime using command line and advanced new file
sublime.log_commands(True)
sublime.log_commands(False)

window.run_command("advanced_new_file_new",{"initial_path": path})

**run advanced_new_file_new** from console
window.run_command("advanced_new_file_new",{"initial_path": "/Users/max/test/test2/hello"})

"window.run_command('advanced_new_file_new',{'initial_path': '/Users/max/test/test2/hello'})"

"advanced_new_file_new,{'initial_path': '/Users/max/test/test2/hello'})"

**trying to talk to sublime from terminal**
sublime test --command 'save'