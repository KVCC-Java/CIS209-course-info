Course Setup
============

This will guide you through an understanding how we will be using Git & GitHub for this course.

## Contents

- [Motivation](#motivation)
- [Learning Git](#learning-git)
- [Setting up GitHub](#setting-up-github)
- [Setting up Git](#setting-up-git)
- [Getting Newly Released Homework](#getting-newly-released-homework)
- [Submitting Your Homework](#submitting-your-homework)
- [Word of Caution](#word-of-caution)
- [Help!](#help)

## Motivation
The motivation for using Git and GitHub has several parts.

The first part is a convenience factor for the instructor. Not surprisingly, Moodle isn't the most friendly for assignments dealing with code. With Git, we can very easily clone all your solution repositories and pull in changes as you add to them.

GitHub acts as a collection point for Git repositories. It makes it easy to collaborate and host code all while using Git either in a GUI or on the command line.

Secondly, we wish for you to get as much out of this course as possible. In addition to learning about programming languages, there isn't a single more powerful tool for programmers that can be learned than a version control system. Version control software helps so you don't need to worry about your dog eating your homework or your hard drive exploding. Your latest and greatest code is always available to you on GitHub. You can search through your history and easily revert to a known good state when you need to.

Third, by learning to use GitHub and creating a public repository, you can build a portfolio of projects and show them off to potential employers. Who needs a resume when you can show what you’ve built?

## Learning Git

There are numerous guides on using Git that are available. They range from being interactive ones to just text ones. Find one that works and experiment; making mistakes and fixing them is a great way to learn. Here is a link to resources that GitHub suggests:
[https://help.github.com/articles/what-are-other-good-resources-for-learning-git-and-github][resources]

## Setting up GitHub
Assuming you have a solid enough understanding of Git, it's time to get started with GitHub.

1. If you don't already have an account, sign up for one here: [https://github.com/join][join].

2. Next you need to join the GitHub Organization that we've created for the course: [KVCC-CIS229][CIS229] Give the instructor your account name so he can invite you to the organization.
  
3. You should receive an invitation to join the organization. If for any reason you can't join the organization, contact the instructor, kchappelow@kvcc.edu and let him know.
  
4. You should now be a part of the KVCC-CIS229 organization and should have access. 
  
5. You should create a private repository for your homework solutions. This should be located in the KVCC-CIS229 organization and be called `hw-answers-<NetID>`, where NetID is the username that you use to log into KVCC MyValley.
     
## Setting up Git

You will now need to install Git. See the following page for instructions: [Set Up Git](https://help.github.com/articles/set-up-git/)

1. Once you have Git installed, the first thing you have to do is to clone your private homework repository by issuing the following commands on the command line:

    ```bash
    $ git clone https://github.com/KVCC-CIS229/hw-answers-<NetID>.git
    ```
  
   This will make a complete replica of the homework repository locally. Now we are going to add a remote that points to the public homework repository where the assignments will be posted.

   Change your working path to your newly cloned repository:

    ```bash
    $ cd hw-answers-<NetID>/
    ```

    ```bash
    $ git remote add homework https://github.com/KVCC-CIS229/homework.git
    ```

   And now you should see the following:  

    ```bash
    $ git remote -v
        homework https://github.com/KVCC-CIS229/homework.git (fetch)
        homework https://github.com/KVCC-CIS229/homework.git (push)
        origin https://github.com/KVCC-CIS229/hw-answers-<NetID>.git (fetch)
        origin https://github.com/KVCC-CIS229/hw-answers-<NetID>.git (push)
    ```
    
   If you don't know Git that well, this probably seemed very arcane. Just keep using Git and you'll keep understanding more and more.  

## Getting Newly Released Homework

Pulling in homeworks that are released or previous homework solutions should be easy just so long as you set up your repository based on the instructions from the last section.

1. All new homework and previous homework solutions will be posted to the homeworks repository in the class organization.  
   Check it periodically as well as Moodle's announcements for updates on when the new homeworks are released.  

2. Once a homework is released, pulling in the changes should be fairly simple:

    ```bash
    $ git fetch homework
    $ git merge homework/master -m "fetched homework files"
    ```
    
3. If you've followed the instructions in each homework, you should have no merge conflicts and everything should be peachy.

## Submitting Your Homework

The submission of your homework should be done by the date and time the homework is due.

The criteria for your homework being submitted on time is that your code must be **pushed** by the date and time. This means that if the instructor were to open up GitHub, they would be able to see your solutions on the GitHub web page.

Just because your code has been commited on your local machine, that doens't mean that it has been **submitted**; it needs to be on GitHub.

Here are a few guideline steps for a process of submitting your solutions:

1. Look at your current repository status.

    ```bash
    $ git status
    ```

2. Add your solutions (if they aren't already added and commited).

    ```bash
    $ git add my-solutions/
    ```

3. Commit your solutions.  

    ```bash
    $ git commit -m "Your commit message"
    ```

   Enter your commit message and then save and exit.  

4. This is the most important part: **push** your solutions to GitHub.  

    ```bash
    $ git push origin master
    ```

   Or, just `git push` for short.  

5. The last thing that we strongly recommend you do is to go to the [KVCC-CIS229] organization page on GitHub to make sure that we can see your solutions.  
   Just navigate to your repository and check that your latest commits are on GitHub.  

6. Then go and eat some cinnamon rolls; you've finished the homework assignment.

## Word of Caution

Git is a distributed version control system. This means everything operates offline until a git pull or git push. This is a great feature.

The bad thing is that you may forget to git push your changes. This is why we strongly, **strongly** suggest that you check GitHub to be sure that what you want us to see matches up with what you expect.

##Help!
If at any point you need help with setting all this up. Feel free to reach out to the instructor.

[join]: https://github.com/join
[resources]: https://help.github.com/articles/what-are-other-good-resources-for-learning-git-and-github
[CIS229]: https://github.com/KVCC-CIS229
