## Required dependencies
1. Node.js and npm https://docs.npmjs.com/getting-started/installing-node
2. Gitbook CLI tools: `npm install -g gitbook-cli` https://www.npmjs.com/package/gitbook-cli
3. Calibre https://calibre-ebook.com/

## How to generate a pdf 
### 1. Install the necessary software
You'll need all of what's needed to actually write a gitbook, 
PLUS the additional software mentioned above.

### 2. Build the gitbook
Building the gitbook generates html output.
```
cd /path/to/gitbook/repository
gitbook build .
```

Note: you can preview what the content will look like on the webpage
```
gitbook serve .
```
You should then be able to open an internet browser and preview the content at: http://localhost:4000/ 
(or whichever http address is printed in your terminal after you hit enter)

[See here for more details](https://til.secretgeek.net/gitbook/use_gitbook_locally.html).

To make it available online publically, run the script: [publish_gitbook.sh](https://github.com/monashmicroimaging/gitbook-how-to-contribute/blob/master/publish_gitbook.sh)
Make sure you have pushed the new html files to GitHub (not GitLab) on the gh-pages branch. You will also need to ensure you have github pages turned on in the settings for the repository.

### 3. Generate the PDF
[Here are the official instructions for generating pdfs from a gitbook](https://toolchain.gitbook.com/ebook.html).

Optionally, you may like to rearrange the order of some pages with Adobe Pro's 'Organise Pages' or similar. 
By default gitbook puts the table of contents first, if there is no cover.jpg file found.

You do have the option to provide your own .jpg cover file if you prefer (cover.jpg 1800x2360 pixels). 
See [the instructions](https://toolchain.gitbook.com/ebook.html) for more details.
