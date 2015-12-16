#Course Setup
This will guide you through an understanding how we will be using Git & GitHub for this course.
#Motivation
The motivation for using Git and GitHub has several parts.

The first part is a convenience factor for the instructor. Not surprisingly, Moodle isn't the most friendly for assignments dealing with code. With Git, we can very easily clone all your solution repositories and pull in changes as you add to them.

GitHub acts as a collection point for Git repositories. It makes it easy to collaborate and host code all while using Git either in a GUI or on the command line.

Secondly, we wish for you to get as much out of this course as possible. In addition to learning about programming languages,
there isn't a single more powerful tool for programmers that can be learned than a version control system. Version control software helps so you don't need to worry about your dog eating your homework or your hard drive exploding. Your latest and greatest code is always available to you on GitHub. Search through your history and easily revert to a known good state when you need to.

Third, by learning to use GitHub and creating a public repository, you can build a portfolio of projects and show them off to potential employers. Who needs a resume when you can show what you’ve built?

##Learning Git
There are numerous guides on using Git that are available. They range from being interactive ones to just text ones. Find one that works and experiment; making mistakes and fixing them is a great way to learn. Here is a link to resources that GitHub suggests:
[https://help.github.com/articles/what-are-other-good-resources-for-learning-git-and-github][resources]

##Setting up GitHub
Assuming you have a solid enough understanding of Git, it's time to get started with GitHub.

  1. If you don't already have an account, sign up for one here: [https://github.com/join][join].

  2. Next you need to join the GitHub Organization that we've created for the course: KVCC-CIS229
  
  3. If for any reason you can't join the organization, contact the instructor, kchappelow@kvcc.edu and let him know.
  
  4. You should now be a part of the KVCC-CIS229 organization and should have access to a few different repositories. You should have a repository setup just for your homework solutions. This should be located in the KVCC-CIS229 organization and be called hw-answers-<lastname>.
     
##Setting up Git
You will now need to install Git.

1. Once you have Git installed, the first thing you have to do is to clone the current homework repository by issuing the following commands on the command line:

    $ git clone git@github.com:KVCC-CIS229/homework.git
  
This will make a complete replica of the homework repository locally. Now we are going to change it to point to your personal repository taht was created for you in the previous section.

If you get an error that looks like:

    Cloning into 'homework'...
    Permission denied (publickey).
    fatal: Could not read from remote repository.

More likely the cause is that you just haven't finished setting up your GitHub account. You just need to [setup an SSH key][ssh-key] to allow pushing and pulling over SSH.

Change your working path to your newly cloned repository:

    $ cd homework/

2. By default the remote called origin is set to the location that you cloned the repository from. You should see teh following:  

    $ git remote -v
        origin git@github.com:KVCC-CIS229/homework.git (fetch)
        origin git@github.com:KVCC-CIS229/homework.git (push)

We don't want that remote to be the origin, instead, we want to change it to point to your repository. To do that, issue the following command:  

    $ git remote rename origin upstream

And now you should see the following:  

    $ git remote -v
        upstream git@github.com:KVCC-CIS229/homework.git (fetch)
        upstream git@github.com:KVCC-CIS229/homework.git (push)
    
3. Lastly we need to give your repository a new origin since it is lacking one. Issue the following but substituting your GitHub username in place:


    $ git remote add origin git@github.com:KVCC-CIS229/hw-answers-<lastname>.git

But substitute in your own last name of course.  

If you have an error that looks like the following:  

    Could not rename config section 'remote.[old name]' to 'remote.[new name]'

Or this error:  

    fatal: remote origin already exists.

This appears to happen to some depending on the version of Git they are using. To fix it, just issue the following command:  

    $ git remote set-url origin git@github.com:KVCC-CIS229/hw-answers-<lastname>.git
This solution was found from StackOverflow.  

For reference, your final git remote -v should look like following when its setup correctly:  

    $ git remote -v
        upstream git@github.com:KVCC-CIS229/homework.git (fetch)
        upstream git@github.com:KVCC-CIS229/homework.git (push)
        origin git@github.com:KVCC-CIS229/hw-answers-<NetID>.git (fetch)
        origin git@github.com:KVCC-CIS229/hw-answers-<NetID>.git (push)
    
Let's test it out by doing a push of your master branch to GitHub by issuing the following:  

    $ git push -u origin master

You should see something like the following:  

    Counting objects: 5, done.
    Delta compression using up to 4 threads.
    Compressing objects: 100% (3/3), done.
    Writing objects: 100% (3/3), 294 bytes | 0 bytes/s, done.
    Total 3 (delta 2), reused 0 (delta 0)
    To git@github.com:KVCC-CIS229/hw-answers-joshuad.git   f726472..545a4f0  master -> master

That last command was a bit special and only needs to be ran the first time to setup the remote tracking branches. Now we should be able to just run git push without the arguments. Try it and you should get the following:  

    $ git push
          Everything up-to-date

If you don't know Git that well, this probably seemed very arcane. Just keep using Git and you'll keep understanding more and more.  

##Getting Newly Release Homework
Pulling in homeworks that are released or previous homework solutions should be easy just so long as you set up your repository based on the instructions from the last section.

1. All new homework and previous homework solutions will be posted to the homeworks repository in the class organization.  
Check it periodically as well as Moodle's announcements for updates on when the new homeworks are released.  

2. Once a homework is released, pulling in the changes should be fairly simple:


    $ git pull upstream master
    
**OR** if you wish to be more explicit, you can fetch first and then merge:

    $ git fetch upstream
    $ git merge upstream/master
    
3. If you've followed the instructions in each homework, you should have no merge conflicts and everything should be peachy.

##Submitting Your Homework
The submission of your homework should be done by the date and time the homework is due.

The criteria for your homework being submitted on time is that your code must be **pushed** by the date and time. This means that if the instructor were to open up GitHub, they would be able to see your solutions on the GitHub web page.

Just because your code has been commited on your local machine, that doens't mean that it has been **submitted**; it needs to be on GitHub.

Here are a few guideline steps for a process of submitting your solutions:

1. Look at your current repository status.


    $ git status

2. Add your solutions (if they aren't already added and commited).


    $ git add my-solutions/

3. Commit your solutions.  


    $ git commit

Enter your commit message and then save and exit.  

4. This is the most important part: **push** your solutions to GitHub.  


    $ git push origin master

Or, just git push for short.  

5. The last thing that we strongly recommend you do is to go to the [KVCC-CIS229] organization page on GitHub to make sure that we can see your solutions.  
Just navigate to your repository and check that your latest commits are on GitHub.  

6. Then go and eat some cinnamon rolls; you've finished the homework assignment.

##Word of Caution
Git is a distributed version control system. This means everything operates offline until a git pull or git push. This is a great feature.

The bad thing is that you may forget to git push your changes. This is why we strongly, **strongly** suggest that you check GitHub to be sure that what you want us to see matches up with what you expect.

##Help!
If at any point you need help with setting all this up. Feel free to reach out to the instructor.
