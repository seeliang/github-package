echo "---------------- login ----------------"
npx npm-cli-login -u seeliang -p "$NODE_AUTH_TOKEN" -e hi@sihuiliang.com -r https://npm.pkg.github.com
echo "----------------- user ----------------"
npm whoami --registry=https://npm.pkg.github.com