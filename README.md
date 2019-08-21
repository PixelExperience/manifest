# Pixel Experience #

### Sync ###

```bash

# Initialize local repository
repo init -u https://github.com/PixelExperience/manifest -b pie-plus

# Sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

### Build ###

```bash

# Set up environment
$ . build/envsetup.sh

# Choose a target
$ lunch aosp_$device-userdebug

# Build the code
$ mka bacon -jX
```

### Submitting Patches ###

Patches are always welcome!  Please submit your patches to our Gerrit.

To start contributing, just register at https://gerrit.pixelexperience.org

Open up terminal to create your ssh keys required for submitting patches to gerrit and type in:

```bash
git config --global review.gerrit.pixelexperience.org.username <username you registered with>

git config --global review.gerrit.pixelexperience.org.email <your email you registered with>

ssh-keygen -t rsa -C "your@email.com"
```

In our gerrit click on your "Avatar" on the top right, then on "Settings".

While in 'Settings' Click on "SSH Public Keys" on the left hand side and then on "Add Key".

Now on your computer navigate to your home "~/.ssh" and open up "id_rsa.pub", copy/paste the context to "Gerrit SSH Public Keys".

You can send patches to us by using these commands in terminal:

```
    (From root android directory)
    . build/envsetup.sh
    (Go to repo you are patching, make your changes and commit)
    pixelgerrit push pie

    or

    git push ssh://<username>@gerrit.pixelexperience.org:29418/<project> HEAD:refs/for/<branch>
```

* `<username>` - Your Gerrit username (which can be seen/set [here](https://gerrit.pixelexperience.org/#/settings/))
* `<project>` - The git repo you are pushing to; all options can be viewed at [this link](https://gerrit.pixelexperience.org/#/admin/projects/)
* `<branch>` - The git branch your change is based on; for projects using this manifest, it is `pie`

Make your changes and commit with a detailed message, starting with what you are working with
Commit your patches in a single commit. Squash multiple commits using this command: `git rebase -i HEAD~<# of commits>`

For more help, use this commands: `pixelgerrit help` or `pixelrebase help`

[View Code Review](https://gerrit.pixelexperience.org/)
