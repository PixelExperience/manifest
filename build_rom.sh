# sync rom
repo init -u https://github.com/PixelExperience/manifest -b eleven —depth=1
git clone https://github.com/aryankaran/local_manifests-1 --depth 1 .repo/local_manifests
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# build rom
source build/envsetup.sh
lunch derp_rolex-user
