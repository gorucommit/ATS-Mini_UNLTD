# targetSEEK.bin firmware map

- Input: `/Users/beegee/Documents/ats mini/other firmware/targetSEEK.bin`
- SHA256: `dac10c695ccc073979264ceca45a6ca14ad566781069f639bd43a8871f808593`
- Detected target family: `ESP32-S3`
- File size: `0x000BC7E0` (772,064 bytes)
- Declared flash span from partition table: `0x00000000..0x003FFFFF` (4 MB)

## High-level layout (flash offsets)

- `0x00000000..0x00003AEF` bootloader image (valid ESP image, hash appended)
- `0x00008000..0x00008BFF` partition table (+ MD5 trailer)
- `0x00009000..0x0000DFFF` `nvs` (data/nvs, 0x5000)
- `0x0000E000..0x0000FFFF` `otadata` (data/ota, 0x2000)
- `0x00010000..0x0014FFFF` `app0` (app/ota_0, declared 0x140000)
  - bytes present in this file: `0x00010000..0x000BC7DF`
  - valid app image found in present bytes
- `0x00150000..0x0028FFFF` `app1` (app/ota_1, not present in file)
- `0x00290000..0x003EFFFF` `ffat` (data/fat, not present in file)
- `0x003F0000..0x003FFFFF` `coredump` (data/coredump, not present in file)

## app0 image segment map (file -> load address)

- seg0: file `0x00010020..0x0004A967` -> load `0x3C060020` (size `0x0003A948`)
- seg1: file `0x0004A970..0x0004ED8B` -> load `0x3FC946B0` (size `0x0000441C`)
- seg2: file `0x0004ED94..0x00050017` -> load `0x40374000` (size `0x00001284`)
- seg3: file `0x00050020..0x000AD35B` -> load `0x42000020` (size `0x0005D33C`)
- seg4: file `0x000AD364..0x000BC787` -> load `0x40375284` (size `0x0000F424`)
- seg5: file `0x000BC790..0x000BC7BB` -> load `0x600FE000` (size `0x0000002C`)

## Conclusion

- This is a valid ESP32-S3 merged image fragment containing bootloader + partition table + `app0`.
- It is **not** a full 4 MB flash dump; tail data is missing (`0x00343820` bytes absent), including `app1`, `ffat`, and `coredump` partitions.
