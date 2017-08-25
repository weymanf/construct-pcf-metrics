dir=$(cd $(dirname $0); pwd)

test -f /usr/local/bin/all_the_repos && \
test -f $HOME/.all_the_reposrc &&
diff -q $dir/all_the_reposrc $HOME/.all_the_reposrc