#!/bin/sh
set +e  # Continue on errors

COLOR_CYAN="\033[0;36m"
COLOR_RESET="\033[0m"

# Install the dependencies
if [ -f "yarn.lock" ] && [ ! -d "node_modules" ]; then
   echo "Installing Yarn Dependencies"
   yarn
elif [ -f "package.json" ] && [ ! -d "node_modules" ]; then
    echo "Installing NPM Dependencies"
    npm install
fi

echo -e "${COLOR_CYAN}
   ____              ____
  |  _ \  _____   __/ ___| _ __   __ _  ___ ___
  | | | |/ _ \ \ / /\___ \| '_ \ / _\` |/ __/ _ \\
  | |_| |  __/\ V /  ___) | |_) | (_| | (_|  __/
  |____/ \___| \_/  |____/| .__/ \__,_|\___\___|
                          |_|
${COLOR_RESET}
Welcome to your development container!
This is how you can work with it:
- Run \`${COLOR_CYAN}npm start${COLOR_RESET}\` to start the application
- Run \`${COLOR_CYAN}devspace enter${COLOR_RESET}\` to create another shell into this container
- ${COLOR_CYAN}Files will be synchronized${COLOR_RESET} between your local machine and this container
"

# hide "I have no name!" from the bash prompt when running as non root
sh
