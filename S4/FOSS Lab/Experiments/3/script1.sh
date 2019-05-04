# currently logged in user and his username
echo 'Currently logged in user: ' `who`

# your current shell
echo 'Current shell: '  $SHELL

# your home directory 
echo 'Home directory: '  ~

# your OS type
echo 'OS type: ' $(arch)

# your current path setting
echo 'Current path setting: '  $PATH

# your current directory 
echo 'Current directory: ' `pwd`

# no. of users currently logged in
echo 'No. of users currently logged in: ' $(users | wc -l) 
