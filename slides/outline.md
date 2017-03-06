# Committing changes


### Add by patch

```sh
$> git add -p
```


### Add interactively

```sh
$> git add -i
```


### Editing hunks


### Signing commits and tags


* generate key
  * `$> gpg --gen-key`
* show keys
  * `$> gpg --list-keys`
* configure git
  * `$> git config --global user.signingkey $KEY_ID`

Note: Show how this works for presentation container with github


```sh
$> git commit -S -m "This is a gpg signed commit"
$> git tag -s vX.Y.Z
```


### Changing the commit author

```sh
$> git commit --author="Author Name <email@address.com>"
```



## Check out

* used to switch branches
* can also be used to add the version
  of a file from a different branch
  to the working directory



## Rebasing

* Changes the parent (base) commit.


### interactive rebase

* reorder commits
* squash and fixup commits
* reword commit messages
* remove commits


### Fixing up commits

* `$> git commit --fixup=<TREEISH>`
* <p>`$> git rebase <TREEISH> -i --autosquash`</p>



## Bisecting


* `$> git bisect start`
* `$> git bisect bad`
* `$> git bisect good`



## Merging conflicts


* manually resolving conflicts
* mergetool



## Refspec


* `HEAD`
* `ORIG_HEAD`
* reflog
* Relative refs
  * `^` previous commit
  * `~N` previous `N` commits
* pushing to another remote



## Hooks


* Scripts that run pre/post lifecycle
  * pre-commit
  * commit-msg
  * pre-push



## Configuring git


### Aliases

* `ignore-changes = update-index --assume-unchanged`
* `track-changes = update-index --no-assume-unchanged`
* `unstage = reset HEAD`
* `nudge = commit --amend --no-edit`



## Tour of the `.git` directory


* objects directory
* refs
  * heads
  * tags
  * remotes
* info
  * exclude

