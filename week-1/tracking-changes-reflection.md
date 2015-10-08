# Unit 1.5 Tracking Changes

-Tracking and adding changes makes developers' lives easier by saving instances of work, so one can easily compare how a file or project has changed with previous drafts and can revert to a previously saved instance of a file/project if they make a mistake and need to undo it. Also, by adding comments with each commit it provides a nice log of all the alterations.

-A 'commit' is essentially saving the project to the repository, much like a 'save point' in a game, it saves everything you would like to save up to that point and you can go back to previous commits to see previous versions of a project.

-Commit message best practices are that the first line of the commit message should be a short description (50 characters is the soft limit), the body should provide a meaningful commit message and use the imperative tense,
includes reason for change and contrasts its implementation with previous behaviour.

-HEAD^ means the last commit, you can use this to revert a project to it's previous state.

-In order to make changes with git, you create a new branch so as not to mess up the original file or cause confusion if you're collaborating with others. Then you add the file to git so that it can track the changes (you do this by typing "git add 'filename'" into the terminal, making sure you're working in the new branch of course). Then you commit the change and add a commit message. Then you push the changes by checking out the master branch, pull the master branch from the repository by typing "git pull origin master" into the terminal. Here, 'origin' means the repository location, and 'master' represents the master branch.  Then switch back to the other branch by typing into the terminal "git checkout feature-branch-name" (feature-branch-name being the branch you created and were working in), and then type "git merge mater". To be honest, I'm not sure how this works, I don't understand how this mergest changes from the mater into the feature-branch. After that, you type into the terminal "git push origin feature-branch-name" and that will push your changes from your local repository to the github repsoitory. Then you go to Github, go into your repository, and there should be a "compare & pull request" option available. Click it and continue to merge the pull request which will merge the changes from the branch you created with the master branch. After that, delete the branch you were working in, leaving the master branch.

-cheatsheet:
 git checkout -b branch-name (creates new branch and switches to that branch)
 git checkout branch-name (switches to that branch)
 git commit -m "message" (commits changes and adds message)
 git add filename (adds file to be tracked)
 git pull origin master (git pull fetches changes from remote repository and merges them)
 git merge master (merge changes from mater into feature branch)
 git push origin feature-branch-name (pushes changes from local repo to remote repo on github)
 git branch -d branch-name (deletes branch)

-Basically, a pull request is a way to let you tell others about changes you've made to a repository and let them review it before the changes are 'pushed' and the repo is modified and the modifications are saved. How to create and merge one was explained earlier.

-Pull requests are preferred because it lets everyone review changes before they're finalized.

