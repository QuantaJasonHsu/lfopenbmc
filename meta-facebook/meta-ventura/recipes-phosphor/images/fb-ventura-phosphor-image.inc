# Ventura Image configuration

# Enable mdio-tools for communication with the PHY chip
OBMC_IMAGE_EXTRA_INSTALL:append = " \
    mdio-tools \
"

# Enable for run-time configurate the LT4232
OBMC_IMAGE_EXTRA_INSTALL:append = " \
    libftdi \
    ftdi-eeprom \
"
OBMC_IMAGE_EXTRA_INSTALL:append = " \
    obmc-console \
"
