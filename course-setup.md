Course Setup
============

This will guide you through an understanding how we will be using Git & GitHub for this course.

## Contents

- [Motivation](#motivation)
- [Learning Git](#learning-git)
- [Setting up Git](#setting-up-git)
- [Getting Newly Released Homework](#getting-newly-released-homework)
- [Submitting Your Homework](#submitting-your-homework)
- [Word of Caution](#word-of-caution)
- [Help!](#help)

## Motivation
The motivation for using Git and GitHub has several parts.

The first part is a convenience factor for the instructor. Not surprisingly, Canvas isn't the most friendly for assignments dealing with code. With Git, and GitHub Classroom we can very easily clone all your solution repositories and pull in changes as you add to them.

GitHub acts as a collection point for Git repositories. It makes it easy to collaborate and host code all while using Git either in a GUI or on the command line.

Secondly, we wish for you to get as much out of this course as possible. In addition to learning about the Java programming language, there isn't a single more powerful tool for programmers that can be learned than a version control system. Version control software helps so you don't need to worry about your dog eating your homework or your hard drive exploding. Your latest and greatest code is always available to you on GitHub. You can search through your history and easily revert to a known good state when you need to.

Third, by learning to use GitHub and creating a public repository, you can build a portfolio of projects and show them off to potential employers. Who needs a resume when you can show what you’ve built?

## Learning Git

There are numerous guides on using Git that are available. They range from being interactive ones to just text ones. Find one that works and experiment; making mistakes and fixing them is a great way to learn. Here is a link to resources that GitHub suggests:
[https://help.github.com/articles/what-are-other-good-resources-for-learning-git-and-github][resources]

## GitHub Account
If you don't already have an account, sign up for one here: [https://github.com/join][join].

## GitHub Authentication token
You will need to create an authentication token in GitHub to use as the password in NetBeans. Follow these steps and save the token for later.

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/NetBeans_token.png "create token for NetBeans")

## Setting up Git

Git should already be installed on the lab computers but you may want to install it on your own systems. See the following page for instructions to install it: [Set Up Git](https://help.github.com/articles/set-up-git/)

## Getting Newly Released Homework
The instructor will post a URL in Canvas for each assignment. The first time you click on one of the URLs from GitHub Classroom you will be asked to authorize the classroom application, click the green "Authorize application" button. You will then be asked to accept the assignment. Clicking on the accept will add you to the KVCC-Java organization [https://github.com/KVCC-Java][KVCC-Java], create a private repository for the assignment and clone a readme file along with any starter code for the assignment if needed. You will receive emails as the steps are completed.

If gitHub accept is not completing for a long time (like more than a half hour or so), try the following:

1. Go to the GitHub web-page, and click on the started import of the assignment in question.
2. When prompted, choose CANCEL (not restart)
3. Then go back to the invitation, and restart the accept process.

You will then clone the repository to your file system using the link in the green "Clone or download" button.

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/Clone_link_in_gitlab.png "clone link")

Once you have copied the link you can use NetBeans IDE to clone the repository:

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/NetBeans_git_clone.png "clone menu")

NetBeans will present you with a clone dialog:

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/Clone_repository.png "clone dialog")

At this point you will want to fill out the following areas of the dialog:
1. Copy the link from GitHub.
2. Populate your GitHub username into the User field and copy the authorization token you created into the Password field.
3. Specify the the local directory on your computer to place the files into.

Click on "Next >" and you will be shown a dialog to select the Remote Branches. 

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/clone_master_branch.png "Remote Branches")

Accept the default to use the master branch and click on "Next >".

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/clone_destination_directory.png "clone menu")

Since you filled in the destination directory on the first dialog, that will already be populated and you can accept the default for the rest of the items by clicking on "Finish".

Alternately, you can also manually clone the repository by entering the following command at the command line in the directory you want to place the repository in.
    
    $ git clone https://github.com/KVCC-Java/cis-209-get-familiar-with-github-username.git
       
This will create a sandbox or copy of the repository. You can then do your assignment and add any supporting files to the directories.

## Creating a Java project in NetBeans
Next, NetBeans will prompt you to create a Java project in the directory containing your sandbox. 

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/clone_create_project.png "create project")

Click on the "Create Project..." button which will present a dialog:

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/New_Java_Application.png "create java project dialog")

Make sure you select "Java Application", then click "Next >". You will then have a new project to work in with your sandbox.

## Submitting Your Homework

The submission of your homework should be done by the date and time the homework is due.

The criteria for your homework being submitted on time is that your code must be **pushed** by the date and time. This means that if the instructor were to open up GitHub, they would be able to see your solutions on the GitHub web page.

Just because your code has been commited on your local machine, that doens't mean that it has been **submitted**; it needs to be on GitHub.

Here are the steps to submit your solution using NetBeans:

1. Click on the top line of your project and select the "Commit..." option on the "Team" menu:

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/commit.png "add to git")

You will be presented with a dialog to commit your changes to your sandbox. Make sure that you add a message for the commit and that your changes are shown.

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/NetBeans_commit_dialog.png "commit to git")

2. You have now saved your changes to the sandbox but to get them to the github server you need to perform a push operation.

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/push.png "push to git")

You will then see the following dialogs:

![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/NetBeans_push_step1.png "git push dialog")
![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/NetBeans_push_step2.png "git push dialog")
![alt text](https://github.com/KVCC-Java/CIS209-course-info/blob/master/images/NetBeans_push_step3.png "git push dialog")

When you click on the "Finish" button your changes will be uploaded to the server.

You can also do this mannualy by following these steps for a process of submitting your solutions:

1. Look at your current repository status.

    ```
    $ git status
    ```

2. Add your solutions (if they aren't already added and commited).

    ```
    $ git add *
    ```

3. Commit your solutions.  

    ```
    $ git commit -m "Your commit message"
    ```

   Enter your commit message and then save and exit.  

4. This is the most important part: **push** your solutions to GitHub.  

    ```
    $ git push
    ```

## Verify the push worked!
The last thing that we **strongly** recommend you do is to go to the your repository on GitHub to make sure that you can see your solutions.  
   Just navigate to your repository and check that your latest commits are on GitHub.  

Then go and eat some cinnamon rolls; you've finished the homework assignment.

## Having problems and need help with your program???
If you are having problems, follow the steps above to submit the current version of your work. Email the instructor explaining what is happening or how you need help and include which assignment you are working on. The instructor can then clone your repository, run the code and can leave feedback using GitHub issues.

## Grading
When the instructor grades your assignments he will clone your assignment repository and a tag will be created so you know which version of your assignment is being graded. Feedback about the assignment will be done by GitHub issues.

## Word of Caution

Git is a distributed version control system. This means everything operates offline until a git clone, git pull or git push. This is a great feature.

The bad thing is that you may forget to git push your changes. This is why we strongly, **strongly** suggest that you check GitHub to be sure that what you want us to see matches up with what you expect.

##Help!
If at any point you need help with setting all this up. Feel free to reach out to the instructor.

[join]: https://github.com/join
[resources]: https://help.github.com/articles/what-are-other-good-resources-for-learning-git-and-github
[KVCC-Java]: https://github.com/KVCC-Java
