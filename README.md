# OrangeFox Recovery for OnePlus 9RT (martini)

OrangeFox R12.1 device tree for OnePlus 9RT 5G (codename: martini, model MT2110/MT2111).

## Device Info
- SoC: Qualcomm SM8350 (Snapdragon 888)
- Display: 6.62" AMOLED, 1080×2400
- A/B device, dynamic partitions
- Boot header v3, recovery-as-boot

## Building (GitHub Actions)
Use [OrangeFox-Recovery-Builder-2024](https://github.com/kinguser981/OrangeFox-Recovery-Builder-2024):

| Parameter | Value |
|-----------|-------|
| MANIFEST_BRANCH | OrangeFox-12.1 |
| DEVICE_TREE_URL | https://github.com/<your-user>/ofox_device_oneplus_martini |
| DEVICE_TREE_BRANCH | main |
| DEVICE_PATH | device/oneplus/martini |
| DEVICE_NAME | martini |
| DEVICE_MAKEFILE | fox_martini |
| BUILD_TARGET | recovery |
| OPTIONAL_FLAGS | export FOX_VIRTUAL_AB_DEVICE=1; export FOX_AB_DEVICE=1 |

## Building (Local)
```bash
git clone https://gitlab.com/OrangeFox/sync.git
cd sync/
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1
# Add this device tree to .repo/local_manifests/roomservice.xml
cd ~/fox_12.1
source build/envsetup.sh
lunch fox_martini-eng
mka recoveryimage
```

## Notes
- The device tree depends on `nilz3000/device_oneplus_sm8350-common-TWRP` (android-12.1 branch)
- Prebuilt kernel needed at `device/oneplus/sm8350-common/prebuilt/Image`
  (extract from stock OxygenOS boot.img)
- For FBE decryption: the recovery must match the security patch level of installed Android
