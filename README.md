# Pixel Experience #

### Sync ###

```bash

# Initialize local repository
repo init -u https://github.com/dkpost3/manifest -b thirteen

# Sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

### Build ###

```bash

# Set up environment
$ . build/envsetup.sh

# Choose a target
$ lunch aosp_lisa-userdebug

# Build the code
$ mka bacon -j$(nproc --all)
```
