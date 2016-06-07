sudo ufw allow 8080
sudo ufw disable
mkdir -p ~/util
cp util/* ~/util
sudo gem install mdl

# npm packages
npm install -g prettyjson
npm install -g jshint
npm install -g node-inspector
npm install -g jsctags
npm install -g esctags
npm install -g jsonlint
#npm install -g eslint
npm install -g vimlint
npm install -g js-yaml
npm install -g istanbul
npm install -g mocha

# python packages
sudo pip install virtualenv
sudo pip install flake8
sudo pip install pylint
sudo pip install bashate

cp pylintrc ~/.pylintrc
