docker pull gitbeaver/release      
rm -rf workdir/*
mkdir workdir/organization-tree
cp -r ../* workdir/organization-tree
docker run -it -p 8080:8080 -v $PWD/workdir:/workdir -v $PWD/git-repos:/git-repos gitbeaver/release \
  main=organization-tree/test/runTest \
  run=test-organization-tree