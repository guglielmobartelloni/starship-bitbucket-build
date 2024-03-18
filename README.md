# Jenkinator

Starship plugin to add jenkins' build status on bitbucket repos.


## Installation

Prerequisite:

- jq

Take the `jenkinator.sh` script and put it on a known folder.

Edit `~/.config/starship.toml` and add at the bottom:

```toml
[custom.bitbucket]
command = 'jenkinator-folder/jenkinator.sh'
detect_extensions = ['xml', 'json'] # filters *.pst files
shell = ['zsh']
ignore_timeout=true
```

> **_IMPORTANT:_** you need to provide Bitbucket's credentials to the script with `$BIT_USER` and `$BIT_PASS` you can set them in the `~/.zshrc`:

```conf
export BIT_USER="USERNAME"
export BIT_PASS="PASSWORD"
```

And that's it, now navigate to a repo and you'll see the build status with an icon:

- Successful ❇️
- Failure 📉
- Building 🏗️


> **_NOTE:_** if there are multiple builds with different statuses the building icon will be displayed.


## Configuration

You can set the following variables in the script:

- BRANCH: the git branch where the script will check
- COMPANY_URL: your bitbucket subdomain

Author: Guglielmo Bartelloni

## LICENSE

GNU General Public License 3.0
