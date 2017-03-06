## Committing changes

### Staging changes

#### Add patches

```sh
$> git add -p
```

#### Add interactive

```sh
$> git add -i
```

#### Editing hunks

#### Signing commits and tags

* generate key
  * `$> gpg --gen-key`
* show keys
  * `$> gpg --like-keys`
* configure git
  * `$> git config --global user.siningkey $KEY_ID`

#### Changing the commit author

* `--author`

## Check out

* used to switch branches
* can also be used to add the version
  of a file from a different branch
  to the working directory

## Rebasing

* Changes the parent (base) commit.
* interactive rebase
  * reorder commits
  * squash and fixup commits
  * reword commit messages
  * remove commits
* Fixing up commits
  * `$> git commit --fixup=<TREEISH>`
  * `$> git rebase <TREEISH> -i --autosquash`

## Bisecting

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

* Templates
* aliases
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

