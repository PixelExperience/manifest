# Pixel Experience #

### Sync ###

```bash

# Initialize local repository
repo init -u https://github.com/PixelExperience-Staging/manifest -b fourteen

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

### Gerrit staging setup

If you haven't yet successfully downloaded the source and generated a build of PixelExperience, make sure you are familiar with those steps. Information on doing a build is available in the build guide for [your device]({{ "devices/" | relative_url }}).

Setup an account on [Gerrit Staging](https://gerrit-staging.pixelexperience.org) and configure your Gerrit username in the Gerrit portal under **Settings -> HTTP Password**.

Now make sure your local git username matches with your Gerrit username:

```
git config --global user.email 'you@yourDomain.com'
git config --global review.gerrit-staging.pixelexperience.org.username "gerritUsername"
```

NOTE; Your Gerrit username is case-sensitive.

If you already have SSH keys set up (e.g. for GitHub), skip the following two steps.

Generate the SSH keys:

```
ssh-keygen -t rsa -C "your@email.com"
```

Add the keys to the ssh-agent:

```
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
ssh-add
```

After that, copy/paste the content of `~/.ssh/id_rsa.pub` to your Gerrit SSH Settings under **Settings -> SSH Keys**.

The steps above have to be performed only once.