yarn build
cd dist
git init
git remote add origin git@github.com:hugojing/jingxiaolei.com.git
git add .
git commit -m "deploy"
git checkout -b gh-pages
git push -f origin gh-pages