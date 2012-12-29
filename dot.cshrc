##########
#
# .cshrc	Default user .cshrc
#
########

#
# Warning: This line gives you the standard user environment. Removing
#          it will render many tools non-functional and any problems will
#          become your responsibility.
#

# Required on Sparc but not elsewhere
#
if (-f /usr/local/lib/user-env/Cshrc) source /usr/local/lib/user-env/Cshrc

#
# Read in user's .aliases file, if exists
#

if ( -f ~/.aliases ) source ~/.aliases

setenv VISUAL emacs
setenv EDITOR emacs

