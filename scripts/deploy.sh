NODE_LAMBDA=./node_modules/node-lambda/bin/node-lambda

test -s $NODE_LAMBDA || { echo "node-lambda not installed. Run 'npm install' first."; exit 1; }
mkdir -p tmp
grep -E "(HOOK_URL|KMS)" .env > ./tmp/deploy.env
$NODE_LAMBDA deploy --configFile ./tmp/deploy.env
