## Phalcon Development Environment
A ready made vagrant set up for easy development of the [Phalcon project(s)](https://github.com/phalcon/).

### What's the idea here?
Well, I was having issues getting a solid environment running where I could easily make changes and debug the Phalcon projects without it messing up my other environments. So I decided to create a specific environment made and built to do just that. 

### How does it work?
It's quite easy, you'll be up and running in a few steps.

 1. Clone the repo
 2. vagrant up
 3. vagrant ssh
 4. cd /vagrant
 5. ./init
 
During the final step, simply follow the given commands and your environment will be set up.

### Requirements
I'm not entirely sure as to the minimum required virtualbox and vagrant, I'd say 4.3 and 1.4 will keep you going steadily. The box uses 1.5GB of memory, this is needed to be able to compile the phalcon module.

#### Contributions
First, compliments are to be given to [zyxep](http://github.com/zyxep) who provided me with the excellent phalcon2 role for ansible. Further contributions are welcome though they need to be specificly aimed at the environment and __not__ be meant for the actual Phalcon projects. Contributions for those go in their own respective projects on github.
