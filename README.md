# emacs

cask install 
```
$ curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
```

ubuntuの場合，bashrcに
```
PATH="$HOME/.cask/bin:$PATH"
```
を追加．

```
cask upgrade
```
を実行後，

.emacs.d/内で，
```
cask install
```
