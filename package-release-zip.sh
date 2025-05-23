#!/bin/bash

Arch="$1"
OutputPath="$2"

OutputArch="v2rayN-${Arch}"
FileName="v2rayN-${Arch}.zip"

wget -nv -O $FileName "https://github.com/jk-99999/v2rayN-core-bin/raw/main/$FileName"

ZipPath64="./$OutputArch"
mkdir $ZipPath64

cp -rf $OutputPath "$ZipPath64/$OutputArch"
7z a -tZip $FileName "$ZipPath64/$OutputArch" -mx1
