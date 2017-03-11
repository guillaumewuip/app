
echo "Deploy to dokku"

# See .travis.yml for the ~/.ssh/id_rsa creation

echo "ssh-agent -s"
eval "$(ssh-agent -s)"
echo "ssh-add"
ssh-add

ssh-keyscan -H $DOKKU_HOST >> ~/.ssh/known_hosts

cat ~/.ssh/config

echo git push dokku@$DOKKU_HOST:$PROJECT_NAME master
git push dokku@$DOKKU_HOST:$PROJECT_NAME master
