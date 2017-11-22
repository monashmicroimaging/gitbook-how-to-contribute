## Instructions for training material contributors/editors
This is the quickstart guide for contributing to the Monash Micro Imaging online training guides.

## Glossary
You don't need to know any jargon to get set up, but if things are uncleaar this glossary might help.
* **git** is the name of the version control system we use so that many people can work on the same project at once.
* A **repository** is the project folder, containing all of our files and the revision history for the book.
* **Cloning** is making a copy of a repository on your computer for you to work on.
* **GitHub.com** is the website where we are hosting our repositories. It's based on the git version control system.
* The **GitHub desktop** and the **GitBook editor** are the two software tools we'll use. Not to be confused with one another!
  * The **GitHub desktop** is what we'll use to get a copy (clone) of our repositories from GitHub.com
  * The **GitBook editor** is what we'll use for editing our book contents, then sharing those changes.

## What you need to install
### 1. Get git installed on your machine
* [Download git](https://git-scm.com/downloads).
* Install git using the install wizard.

### 2. Login to GitLab with your Monash username and password
* [Login to GitLab](https://gitlab.erc.monash.edu.au/) with your Monash authcate username and password.
* Email one of the MMI Image Analysts so we can add you to the group mmi-gitbook-docs, which will give you access to our private repositories.

### 3. Install the GitBook editor
* Download the GitBook editor at: https://www.gitbook.com/editor
* Install the Gitbook editor using the install wizard.
(Optional: You don't have to make an account on the GitBook website. The Gitbook editor will prompt you to sign up or login every time you open the editor, but you can just click 'No thanks' or 'Remind me later'.)
* Change the GitBook library path.
*(This step is so you get a nice list of all your Gitbooks when you open the Gitbook Editor.)*
  1. Create two sub-directories (folders) inside your GitHub folder.

    *You can make the new folders with Windows Explorer/Finder/Dolphin (Windows/Mac/Linux) or however you usually like to create folders.*
    * The first folder is called "Gitbook_library", eg: ~\\Documents\\Gitbook_library\\
    * The second folder is called "Gitbooks" and goes inside the folder named "Gitbook_library", eg: ~\\Documents\\Gitbook_library\\Gitbooks\\

  1. Change the library path of the Gitbook Editor
    * Open the GitBook editor you just installed.
    * Click the GitBook editor menu, then click "Change Library Path..."
    * Set the Gitbook editor path to: ~\\Documents\\Gitbook_library\\

Done! You have everything installed now that you'll need to contribute to our Gitbooks.

## Get the Gitbooks (cloning from GitLab)
  * Go to the [MMI GitLab page](https://gitlab.erc.monash.edu.au/mmi)
  * Find the Gitbook you want in the list of repositories, and click to open it; eg: gitbook-fiji-basics. (If you can't see any repositories with the prefix "gitbook-..." check whether you have been added the MMI GitLab group - see step #2 above).
  * Copy the HTTPS address at the top of the screen, under the name and description for this repository. It should start with `https:`. If you have copied something that starts with `git@gitlab...`
  * Open the command line (Windows: type "cmd" in the start search bar / Mac: open "terminal" from the Launchpad / Linux: you already know this, c'mon!)
  * At the command line, switch into the location you want to put the gitbooks. Type: 
  
     `cd Documents\Gitbook_library\Gitbooks\`
  
  then hit the Enter/Return key on your keyboard.
  
  * At the command line, type: `git clone ` then copy-paste the https address to the gitbook. Hit the Enter/Return key on your keyboard. (Tip: Make sure you have a space between the word `clone` and the start of your `https:...` address.)

You should see the terminal print a bunch of messages like this if your clone is successful:

 `Cloning into 'gitbook-fiji-basics'...`
 
 `remote: Counting objects: 615, done.`
 
 `remote: Compressing objects: 100% (383/383), done.`
 
 `remote: Total 615 (delta 244), reused 593 (delta 226)`
 
 `Receiving objects: 100% (615/615), 5.73 MiB | 34.13 MiB/s, done.`
 
 `Resolving deltas: 100% (244/244), done.`

#### Troubleshooting tips
If you are **not** successful you may see an error message. Here are some common ones, and ways to troubleshoot them.

 `Error: "git" command line tool is not installed`

If you see this error message, you may need to [reinstall](https://git-scm.com/downloads) the git command line tools (see step 1 in "What you need to install").
 
 `Permission denied (publickey).`
 
 `fatal: Could not read from remote repository.`
 
 `Please make sure you have the correct access rights and the repository exists.`

If you see this error message, it's likely due to one of two possibilities.

**Possibility 1:** the repository address you pasted after `git clone ` might have started with `git@gitlab...`. You need the repository address starting with `https:`. Go back to the repository you want on the [MMI GitLab page](https://gitlab.erc.monash.edu.au/mmi) and make sure you have HTTPS selected in the dropdown menu beside the address you are copying. (Alternatively, the HTTPS address is also the url in your browser, so you can also copy it from there.)

**Possibility 2:** You might not have been given the correct access permissions - please contact an MMI Image Analyst to assist you.

## Contributing to a GitBook
Open the Gitbook editor software, and click on the name of the particular Gitbook you want to edit.

*If you can't see the name of the Gitbook you want when you open the GitBook editor, 
check you have cloned it from [GitLab](https://gitlab.erc.monash.edu.au/mmi), and 
it exists in the right place on your computer, i.e. ~\\Documents\\Gitbook_library\\Gitbooks\\repository-name\\ .*

### 1. Check for any changes made by other people
This is important to do whenever you open a Gitbook for editing. 
In the Gitbook editor, go to the "Book" menu, and click "Pull". 
This looks for any changes shared on the GitHub.com repository, then pulls those changes to your computer so your copy is up to date.

### 2. Add your content
The contents of Gitbooks (text, images, tables, etc) use Markdown formatting. You can change the formatting using the options in the "Markup" menu. 
Here's an easy guide to using Markdown, if you'd like to know more: https://guides.github.com/features/mastering-markdown/

ou can add new articles to the book by clicking the "Add an article" button in the left hand side menu. 
Alternatively, you can go to the Gitbook Editor menu and click "New Article".

You can organise articles into sections by right-clicking in the left hand side menu and selecting "Add part". For more information, see:
* [Gitbook chapters help](https://gitbookio.gitbooks.io/documentation/content/format/chapters.html)
* [Gitbook structure help](https://toolchain.gitbook.com/structure.html)

### 3. Sync your changes
lick the blue button at the top right hand corner of the Gitbook editor to **save** your changes. 
The button will change to a more transparent shade of blue, and a second "Publish and Sync" blue button will appear in the top right hand corner. 

Click the publish and sync button to update the remote GitHub repository. (The first time you sync changes, you'll be asked for your Monash authcate username and password. Type it in, and feel free to save your credentials so you don't have to type your password every time).

### 4. Get the book built
An MMI staff member will need to build the html book before edits can be displayed online. 
Please email to request this if your changes have been significant. 

## Further resources
* [GitBook: generating eBooks and pdfs](https://toolchain.gitbook.com/ebook.html)
* [Markdown syntax guide](http://commonmark.org/help/)
* [Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* [GitBook help](https://help.gitbook.com/)
* [GitHub help](https://help.github.com/)
* [GitHub: hosting online pages](https://pages.github.com/)
* [GitHub: custom domains with GitHub pages](https://help.github.com/articles/using-a-custom-domain-with-github-pages/)
