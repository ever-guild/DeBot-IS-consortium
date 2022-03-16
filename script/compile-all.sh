#!/usr/bin/env bash

set -o errexit

APP_NAME=${app:-Example}
APP_SRC=${src:-.}

compileContract() {
  src="${1:-${APP_SRC}}"
  appName="${2:-${APP_NAME}}"
  path="${src}/${appName}.sol"
  printf "Compile contract %s..." "${path}"
  npx everdev sol compile --code --output-dir "build/${src}" "${path}"
  echo "✓"
}

npx everdev sol version
compileContract AddressInput/examples
compileContract AddressInput/examples
compileContract AmountInput/examples
compileContract Base64/examples
compileContract ConfirmInput/examples
compileContract Hex/examples
compileContract Json/examples
compileContract Menu/examples
compileContract Network/examples
compileContract NumberInput/examples
compileContract Terminal/examples
compileContract UserInfo/examples
compileContract CountryInput/examples
compileContract DateTimeInput/examples
compileContract EncryptionBoxInput/examples
compileContract Media/examples
compileContract QRCode/examples
compileContract Sdk/examples
compileContract SigningBoxInput/examples
