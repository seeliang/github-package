echo "------------- set npmrc ---------------"
npm config set always-auth true
npm config set //npm.pkg.github.com/:_authToken "$NODE_AUTH_TOKEN"
npm config set @your-compnay:registry https://npm.pkg.github.com
echo "---------------- cofig ----------------"
npm config list 