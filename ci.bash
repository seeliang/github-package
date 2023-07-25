echo "set npmrc"
npm config set always-auth true
npm config set //npm.pkg.github.com/:_authToken "$NODE_AUTH_TOKEN"
npm config set @your-compnay:registry https://npm.pkg.github.com
npx npm-cli-login -u seeliang -p "$NODE_AUTH_TOKEN" -e hi@sihuiliang.com -r https://npm.pkg.github.com
npm config list 
npm whoami --registry=https://npm.pkg.github.com