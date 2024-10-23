base_path=$(pwd)
shell_ui_path=/home/Martin/projects/frontends/onecx-shell-ui

echo "Starting up Shell: UI"
cd $shell_ui_path
npx nx serve --configuration=development --proxy-config=proxy.conf.js --publicHost=localhost:4300/newShell --servePath=newShell
cd $base_path