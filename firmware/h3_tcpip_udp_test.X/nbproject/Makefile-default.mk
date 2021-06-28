#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/bsp/bsp.c ../src/config/default/crypto/src/crypto.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../src/config/default/driver/miim/src/dynamic/drv_miim.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/icmp.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/library/tcpip/src/tcpip_commands.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_internal.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/command/src/sys_command.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/sys_random_h2_adapter.c ../src/config/default/tasks.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/app.c ../src/main.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c ../src/app_commands.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/438849557/drv_miim.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o ${OBJECTDIR}/_ext/1360937237/app_commands.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/1645245335/crypto.o.d ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o.d ${OBJECTDIR}/_ext/438849557/drv_miim.o.d ${OBJECTDIR}/_ext/1033058136/helpers.o.d ${OBJECTDIR}/_ext/1033058136/icmp.o.d ${OBJECTDIR}/_ext/1033058136/tcp.o.d ${OBJECTDIR}/_ext/1033058136/arp.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d ${OBJECTDIR}/_ext/1033058136/ipv4.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1033058136/dhcp.o.d ${OBJECTDIR}/_ext/1033058136/dns.o.d ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d ${OBJECTDIR}/_ext/1033058136/oahash.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d ${OBJECTDIR}/_ext/1033058136/udp.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1376093119/sys_command.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d ${OBJECTDIR}/_ext/1664057780/arc4.o.d ${OBJECTDIR}/_ext/1664057780/asm.o.d ${OBJECTDIR}/_ext/1664057780/asn.o.d ${OBJECTDIR}/_ext/1664057780/blake2b.o.d ${OBJECTDIR}/_ext/1664057780/blake2s.o.d ${OBJECTDIR}/_ext/1664057780/camellia.o.d ${OBJECTDIR}/_ext/1664057780/chacha.o.d ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d ${OBJECTDIR}/_ext/1664057780/cmac.o.d ${OBJECTDIR}/_ext/1664057780/coding.o.d ${OBJECTDIR}/_ext/1664057780/compress.o.d ${OBJECTDIR}/_ext/1664057780/cpuid.o.d ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d ${OBJECTDIR}/_ext/1664057780/curve25519.o.d ${OBJECTDIR}/_ext/1664057780/curve448.o.d ${OBJECTDIR}/_ext/1664057780/dh.o.d ${OBJECTDIR}/_ext/1664057780/dsa.o.d ${OBJECTDIR}/_ext/1664057780/ecc.o.d ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d ${OBJECTDIR}/_ext/1664057780/ed25519.o.d ${OBJECTDIR}/_ext/1664057780/ed448.o.d ${OBJECTDIR}/_ext/1664057780/error.o.d ${OBJECTDIR}/_ext/1664057780/fe_448.o.d ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d ${OBJECTDIR}/_ext/1664057780/ge_448.o.d ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d ${OBJECTDIR}/_ext/1664057780/hash.o.d ${OBJECTDIR}/_ext/1664057780/hc128.o.d ${OBJECTDIR}/_ext/1664057780/hmac.o.d ${OBJECTDIR}/_ext/1664057780/idea.o.d ${OBJECTDIR}/_ext/1664057780/integer.o.d ${OBJECTDIR}/_ext/1664057780/logging.o.d ${OBJECTDIR}/_ext/1664057780/md2.o.d ${OBJECTDIR}/_ext/1664057780/md4.o.d ${OBJECTDIR}/_ext/1664057780/md5.o.d ${OBJECTDIR}/_ext/1664057780/memory.o.d ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d ${OBJECTDIR}/_ext/1664057780/poly1305.o.d ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d ${OBJECTDIR}/_ext/1664057780/rabbit.o.d ${OBJECTDIR}/_ext/1664057780/rc2.o.d ${OBJECTDIR}/_ext/1664057780/ripemd.o.d ${OBJECTDIR}/_ext/1664057780/rsa.o.d ${OBJECTDIR}/_ext/1664057780/sha3.o.d ${OBJECTDIR}/_ext/1664057780/signature.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d ${OBJECTDIR}/_ext/1664057780/sp_int.o.d ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d ${OBJECTDIR}/_ext/1664057780/srp.o.d ${OBJECTDIR}/_ext/1664057780/tfm.o.d ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d ${OBJECTDIR}/_ext/1664057780/wc_port.o.d ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d ${OBJECTDIR}/_ext/1664057780/aes.o.d ${OBJECTDIR}/_ext/1664057780/des3.o.d ${OBJECTDIR}/_ext/1664057780/random.o.d ${OBJECTDIR}/_ext/1664057780/sha.o.d ${OBJECTDIR}/_ext/1664057780/sha256.o.d ${OBJECTDIR}/_ext/1664057780/sha512.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1664057780/misc.o.d ${OBJECTDIR}/_ext/1664057780/evp.o.d ${OBJECTDIR}/_ext/1360937237/app_commands.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/438849557/drv_miim.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o ${OBJECTDIR}/_ext/1360937237/app_commands.o

# Source Files
SOURCEFILES=../src/config/default/bsp/bsp.c ../src/config/default/crypto/src/crypto.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../src/config/default/driver/miim/src/dynamic/drv_miim.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/icmp.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/library/tcpip/src/tcpip_commands.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_internal.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/command/src/sys_command.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/reset/sys_reset.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/sys_random_h2_adapter.c ../src/config/default/tasks.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/app.c ../src/main.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c ../src/app_commands.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFH144
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MZ2048EFH144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  .generated_files/6f30793ab15061e33fcd879f113b9eb2c268a0bf.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  .generated_files/2cfd01366acedb0e20be2f03499224c85a32d173.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/f754a234ce6f1eba3544e0c182139869bd699024.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  .generated_files/45f363e091f6646f1172cbc883cc8441c6313b5b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/93669d7096f1c27a934713f5d3c6e9d83dccd97e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/207d7460f7be4b475f1b787ecae9804a20b015d8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/a3f66600fdb5921bd77eaff2a62d665c6e847a20.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_ethphy.o: ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/f3d43e7a81387faac5f675544d545e3089993813.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o: ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/e5d0f4ee20a2784193304a511b2e9df0e5d3b1b1.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/438849557/drv_miim.o: ../src/config/default/driver/miim/src/dynamic/drv_miim.c  .generated_files/75023db9db454911d180d1c12f81f03792edd4f4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/438849557" 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/438849557/drv_miim.o.d" -o ${OBJECTDIR}/_ext/438849557/drv_miim.o ../src/config/default/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  .generated_files/484f28aa3744315894f2d9f0ff120f469f1fb9c7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  .generated_files/8a82245d5b953911b24e6f6084f4745672a212ba.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  .generated_files/88f8ff6c48a05588f3e8bfd5cfeada0c175ece19.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  .generated_files/4305e4c87892f031aa1b83e47bcbd88c6ea351f5.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_commands.o: ../src/config/default/library/tcpip/src/tcpip_commands.c  .generated_files/3d5b01d83ab4c99c4c010688d8e1f67a7a1202a0.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ../src/config/default/library/tcpip/src/tcpip_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  .generated_files/7b60a7304461434429c0a6a5a736e0751a59282f.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/fc28f7c3b2ee1e19b2d1d4aea1d2c91ffa10a122.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o: ../src/config/default/library/tcpip/src/tcpip_heap_internal.c  .generated_files/5706d691e2d5a95d28049ddf32f7676b2c33daaa.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ../src/config/default/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  .generated_files/472f115abd7a7b6fed8c55baa87d22bfac1ca5f8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  .generated_files/a97a5f6eddf9337e52e1a6d3c36fc0194cc2f148.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  .generated_files/d40bfa7e7ae522fe87d1c07b961380116de6fdeb.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  .generated_files/cbb2b9083e2909365dbdf45f7272d9de2bfa54cf.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  .generated_files/56d1f99486d21c4aae0fcbe448ea7e693b2f5c5.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  .generated_files/9389ab834235c2bb676eb591fe903ce7a0f97abe.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  .generated_files/f0377ef07594a60a5bcd9ae9ae88c803f98f2432.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  .generated_files/11fcca629a27888d53dbf3222f218a4f8c41d101.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  .generated_files/75006c826177c8fed00968134c8ad265a511a21d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/a04705a8ba5ea2eaa9e3b81d14ae9e41d52c67de.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/dfe26acd8ccaf14f425751636b3309df7af6b1ee.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/17f34f38a4cd00403048cfb01b9c55782d37cf08.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/f50c1b9ff80ecd1c157fd29fed9e3a2bfbbc8a6d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/faa311a4a05cc22f2dac8da3e9788c2bebef4f50.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/70fc423c19d2942f7c790fffc70fef87f6d2b6ff.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  .generated_files/800bfa6f9d1b76e9f18ae3b0825ccb69da5fd602.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/d919a5904448397bc42cdd90c2a489170271d5d6.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/f8ac06a983c680177fffc6afbac6b0dbb48168e2.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/7bc07fe9b2f66ebc501b3c647092ab19422b405c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/58170c06aa2bfc9c3927c6a959dc9d8a2028693a.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/31587022ec43c2799aef65512e455ff52d733406.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/72d939c0af11a8178cd4b4013a2eb8a02766c48e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  .generated_files/5fee295c1ebffd0caee94e580e0aaf463f65f2fe.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o: ../src/config/default/system/sys_random_h2_adapter.c  .generated_files/61a96a4b22a20afe83263f28c4d2622ef82bad64.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ../src/config/default/system/sys_random_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/23a44bf42e58a746539c3291115d87f713e78767.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/8e61c6bab5c9c24423a4a2e62f10196ef3e3aca.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/268d6e7638e3cfb61d11fff45d7078b8dcc7f0c4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/5a67081f1e4c4db12c247393aaaa05798c459200.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/31aed28d523654c92418abd87befab2a8a4efbd.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/47efde6642e6bc974bb1d9c9b224b2978bb943.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/c9dfdac328340372a45d2e70a18231dad8fc5a3f.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/69ef467301af71b52d460c979c0f71e67eb77e25.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/d7b5ed52373792d090cc0e96f6be87f9ad175c38.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/881e7b85d94d58e1cb62aba621da2100222aca23.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/4bc93990a7fc08fe2d5287979111d2eda8f64569.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/bc1c9ddef60a8298167e3e4277fdeb772873e592.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/66dc2934349909744b9ed59c787933ca621ee961.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/23858d709ac93be5153fd2f3a862feeae67185dc.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/c6cad3071ea100ef765df9871b3c28d747c3daa7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/ef51a239fd79f4cb139ad870ebe1ad8294aeb672.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/5411189f313222e142936ce5072cd4092a4d6d0c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/75296908c554f8a71e1519d4f8c53c882447e8c8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/e3b0c1d358729ad6b13570970090740b0f5850fc.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/24371c52d75737b512730abbb6872ac389ef43a8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/8bcab62b18c7919a4b23dde402ec67e52f930fa6.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/210f986642a34470b1a630c9ec5a92b3d10886c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/ef8f6ec89c2d33070ba6fa6fb55fabdb6c9db604.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/beac3a94015383f34ce32a115fd4234f15fe048e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/89a1a6868aa17c7ece3f2c2c0f6e36467fe569e4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/9a262b9cbcb747b66fb5713e54fd6454283cbac4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/cbb0dba03407d336bf63b6e9bfcbd41d0ec63779.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/730dc2fe1e93c5d1f6daa138d175f28997eaa147.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/411b582e875f586e2f3ef47ba343ed4c95a9041f.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/c2c9fc3774933896fffbc85345f6218555cba4ea.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/12b95eda760095441e5d9de68504b7d1caf2e52b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/4a5bb10705374e4a32bb5a18b720037c4831fb0.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/671ac7fd2a39abe61c6a0c7944527fa5e9f61d4a.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/bf407350a494c0d0934df6e3a8e3eb2eda73ea35.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/6573aa3fd251522d0f5c210502c4996003f3207a.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/3d9e2bcfe8571f5a2571c4f8c6ee48f45d1fd6db.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/4904b924ccfea3a193ae0c6bf20861b77db6b992.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/88cb2eede900d131812bd8f19661d578004ce507.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/79742db436d092c87a05a822895e7f536e6cf593.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/c44751230dde0fbd23809d9485bb0eb8a7fef8d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/a69e3798c3d66149b41e3540544e592cb1510420.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/c371e7d60f4e1583651028efe7d827447799b077.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/45a543b27bcffdb15215e3e108fc499d04642d69.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/df89444428161d973d821b55a6e3954644fd899b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/b02db8a532b36532bd501e6e57212abc89f7debb.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/629702f22e5bdbc1d5f1b59924826ee237ef3af8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/24cfa33a43a2675a24238cbc99c8d0958df6b52e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/371c38393828dacca3517ccc8cfb3963e58a288b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/4b67a1368e7cce7a51fead918547c653690e502b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/2e449036f542ee8b94b9f20ffa5975019f83bebc.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/1bd2db7ae358324199afeee8c5ecc24778f422fa.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/40da87d1ea332cb59c522b85833619ed2d0d31f6.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/6ee60822835ab8387fd288ec6263a359619c304.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/26e89ebb429514aa87bd8ea3c8dee8584748b59b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/5893dcdeb2c8bf62b552085f0451eda0501a95e2.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/2b615196c91d8d102b2ec32cae7897882bee5921.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/1016e31cbb2fc104cc4b049c954752d95f5642fb.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/99a6e172add31b0b4281aa6955cb47f6ffaddb72.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/5e938734dfae71b8e732c6cc36ee44e793ecad5b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/72de1f45c64f5dfca96fb61b4adc1663deda149a.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/35b4497390dbd3cc445f4a1d961f299e075bd451.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/6242a498021345793d310e3b4bda480363d0839c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/bfc7276800eecf3dcfbf40fd888f20ae3dbe5c49.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/ec19bef6a18642d208b772bd14f332a3d4021ef5.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/a3fe8909d43cf62c31a2d300d33f08904816e074.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/817b91dbaa9c7cf8039c08fdb57333cd5c7e2ea1.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/eb1b3adb310195bca732308795a821b8bf0b82.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/ff9c461929301f409ad9e493be33d1ff2f824d2d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/84a87bae5e7fd5fdca99488f330ce274359f80.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/fc84af33385dc7fc09cb59163a9e6473e9468394.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/a1f34ce8011f6437c091ba1ba720e02def8793bd.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/7bdb55285243599af8a213be8cabd899b97558d3.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/36fd9602b58450ccdefa0cc515f353f2c0f99342.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/12fe003569a6f5e55c4e1ed12cf619018769f2f1.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/ac1e9259ab6b8b165af084253d792a6aa1a693dd.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/3e87a2d2ac0eee2b9ce3ad7b030d503069c94042.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/3189a87d549ad2af0231390e574a1b6fd42a3ff6.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/1ffff7108e10ab69cef149248e3f90ee3b846b5d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/e7b4cca86708e6d86a82bae475edf02033b827ed.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/87b8646646ff924779bb656b04abcfe3e22849a8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/4cceed281d1b2e4ee0eb93275cfe9e660645ac6c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/e0e4da7dd3441695fba82ae55c137b68f1b92fee.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/9af5cdfa49b5d819c760f2c770275faa46c5d077.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/7fbeda7414a0b37617504768ec14eda040c43ed6.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/9648518a77827717828652e818e6abf0d3267be7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/a8cb66c7d2b2845f042dfab69832e24fed6b529e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/c516924f28bc063b2d3d5e290933ab71974f6506.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/6721bc47601770b37fcfaf24692afc42a5a4bd92.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/5099a3fc3640bc3506a40842010d068e7a73c2ab.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/ccddb27f83876062a49d99d14673f92bd58d01a3.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/4d4a0be6f60cb71faade6a655eaefd7a680ff644.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/72a058e4826a9a8ab32f2ab927837a06bdb7690d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/b6c175e3aed5b7be64cb1998838ad8e2cfa8ffda.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/73e8c43a4815f8fa7a139b1c8160cef2e8f16345.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/15702d417e084db5235320d86bf298f83138e85c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/1554b8740a10ae23cccde04ce0d7c1b551802243.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/ede12f6188a102c111296718dad6e5bf4d4ebbb8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/7a692edd8f0c6161fbb7e77eaf7ddb2a619736c8.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/966838ca5ce5d2ef5c20d04147ea222e45a87a4b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/b95232e2ddad27a71fd7561fb945090b6bef5b92.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/95da12bfb5153d1ae978c44adba4c2d19041f446.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  .generated_files/67ad4fc996f37a3f7461b719023af6f895a0f946.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/7d6ecae95eced8f0c630b6d7ba78b69d6805745.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/9627533cc137391e590b6ad8ab776a2f27732f26.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/c22ca6b34ec03401da70715100273443afcb7ef1.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_ethphy.o: ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/75a92754d661504ba40829160f3262b0da25bca3.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o: ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/6e8f1ac337e26fd661d829eec19473a4090aff9b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8740.o ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/438849557/drv_miim.o: ../src/config/default/driver/miim/src/dynamic/drv_miim.c  .generated_files/da85493e7af8f4c3cad41a807b0edaa39f5a4ff7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/438849557" 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/438849557/drv_miim.o.d" -o ${OBJECTDIR}/_ext/438849557/drv_miim.o ../src/config/default/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  .generated_files/8c647ebd2db8a8ee231576ef3e49ec0383963eda.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  .generated_files/85308607e455eecbead798656f498eb18104cce.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  .generated_files/a2015684fc13248486e0325bce791409b97df860.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  .generated_files/d73964e07841061c5ec729455307cd34e0966860.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_commands.o: ../src/config/default/library/tcpip/src/tcpip_commands.c  .generated_files/e442ccf947a53812896d3446532716ec202f90f4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ../src/config/default/library/tcpip/src/tcpip_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  .generated_files/aa4b97033c2f37f63b1fe0ca4e3a9a68109d1666.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/c318617f931777e5a5941c315f61224a430f839d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o: ../src/config/default/library/tcpip/src/tcpip_heap_internal.c  .generated_files/5eddd0bba86c81d11b661ee8753d6d6e810677cc.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ../src/config/default/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  .generated_files/8b08f6fceb4604b9a59f4611f9f8526e088c59b0.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  .generated_files/6c4f211460ad12adc95cbac2afe7c60f46277eaf.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  .generated_files/8007af06f709216f6180f18871c8f3112d9b4c5b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  .generated_files/6d563f039c68f9fcb6cffc5fb5eafab125ab2659.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  .generated_files/5ef99e57c9942f0de5ec003a4770c164ab557706.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  .generated_files/f30b10abfbc2110cfdb3dff7371ba91fc5ef27e7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  .generated_files/31b602b2ead1c9dbea3000aee90275172e640b11.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  .generated_files/e7bb29a5f30f9c0cec6ede48ea04299e7fcd153d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  .generated_files/f9a304767003bb0ec346f9997b86ef005380a285.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/4cb4367fb86f3e38ac7c43efbd5f79ee1efcada4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/bf65fff37e19557aabea33337f33e233d6b48b96.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/9b099fe191a004ccc4e9b8d19acf530443708ccd.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/4a4b89f329eeb920624b22ffa7ffe7b3383b091e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/3fdd1a707fe22f039af2a55be61c9fb9e28d291f.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/78dfa33f9f155d926e25d52d1bb6ffb431087266.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  .generated_files/b0a4c0aba8364424179e107a3dc757f25359a8f0.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/8601391485b13aebb76441739e2bfed736ed6186.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/39e60a5791d879e0b31dda147a3425dd25f17730.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/da5580de6369f74d6f982bef34310bd059ead10b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/d7b1dc2d3f904d1a51e7cc87f1d4b899de3bd8dd.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1000052432/sys_reset.o: ../src/config/default/system/reset/sys_reset.c  .generated_files/95201a29d0cfdccd343e853793df94955ae19ae9.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1000052432" 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1000052432/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1000052432/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1000052432/sys_reset.o ../src/config/default/system/reset/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/a3960cc39d6bcdd85f99af401f76468d5b4e6d1.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  .generated_files/cbbc04c06dde942d2dfedb689ec7602a59b2d73d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o: ../src/config/default/system/sys_random_h2_adapter.c  .generated_files/cdf7601fa7e2b996ceeac731a4b7e69b3bbc4bf7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ../src/config/default/system/sys_random_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/c15b9016a4c70f8fbf098f4d14bbdfe2dc1f7282.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/5ddb52a0dbfd642d0f32123b848dc5d1eb91e547.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/b06fdc785cbea00cd1363117e0ce6b53009bd9e5.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/6ec3c241fe7c92d9c1e0568f2916886fd148ea30.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/d3d0825810a5c91727e9df62fc17b98d80e5cb05.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/633c283f6269e241ec25875c2613a5dce26ac9e6.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/15c4b874e1a8e1ed6dfe3506687aa0ecfadb53ea.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/99a52d548d0e87a28f9876e47051c32527ea968c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/e9b3b531ff8a694f36390672cd967f6692bfcb42.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/81b84d98fee7ff373a707e8e94bc1b421baae680.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/1bab56fe95590bf44fa338207a4e6f1de7a00e94.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/38dbbbe2ea52aa4cebc7274bc3cdff3077a61d8a.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/4b18e7eb5cd426e2b7e001acd28387f06166f76d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/5ad34e9ef07141094eb1d7c40dc93e72cebf2955.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/a846a79b9ee8c1f67ce5efc9f308751f6b2123a.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/ca9f35cbdee9588d7dfb96a765d6bdbcefb4bc2e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/ee11aa5d644607521602e7a1d759ce2a604e832b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/caa1a3892d34be5260c7241272c55c4073b7a7f7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/983f4b8a5efa472adb58032e94b89d6640909eac.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/30bb3b3f3c5e4967d4b822b3c7ca1c20d686551a.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/42c4158ff4ec882a6271d252142a295970664b21.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/594d8692350a0a661e23f26528632b3553ccc0a4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/8dfcd1ff86a4ab268cc71e0e71222e54d3b63dc4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/9eb93287fa729f18260687023a9d361a7774d99d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/682e473120a1c0700c6fc93b3d99f48d53ae8419.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/42da440c997fc5c0b05213bc3a273da32e5325e9.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/c5fc3be2299d99723e76a7c50d743355263bb539.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/4e983328bed2f305070a2b6c689d2a01b93d400.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/73c456686189ce90ff12869115bb36e1b137d561.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/ec1bdff02486a80ff6565819edc1285aae8b0505.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/7107511c9f9e7221c36a6ce5b119d70cb66ab4df.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/edcdb081431214e43e5c453d518baa530d9146d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/5647fa3f988ce240b995f74c8dcefea5788bd7c0.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/51a46f8fd6a23ad1aa2c53b003d7564ba668876.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/5854ec24ec11b925ca2db912457d9d3327aa5c3f.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/a5a7d246c9e142b9f06153c25a006bb238cf5a86.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/c436c9caa4d140ffa263802754aee30d12056ef9.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/674fcbb6956a22de0e7ad37f9981c1eb0a060465.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/5cbcb3bcb47c8fb0a0a73ffd831dd66bd9ef0999.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/37e53ed5020aa760535f24ea9a1a7f1c57d97a51.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/5b0f97a81ba5988c9426a158dce047292f9e4db9.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/a0d39af4ea1562da9cce63d806df4ecd6f7e2ff4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/c2c7f591b21f0614671f16ef394ad12182bc1819.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/d8a18bcff51e5f8cea3804665a31b195d08041b4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/e11fd010dd89831cfaf2cbcfba69f775dbbf7d86.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/c9faa83445e1f7ef0dfbe84335f12748d93fc532.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/3e2f42ae3b6ad731eb77dd45ee178c3133778dc4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/2da2dafba3cd4998af3b54f4417e585884e3d5f6.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/5b9217c764987ad24fae787b8f99d7d434a56da5.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/674491cf1e4973f545d03c2ade9be68373232dac.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/5366c72f5140132271b7d4ac6c0a239175749ae2.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/7b232031fda89e6b903383fafa3e03693ec24550.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/73513e95c3cd0a0ed4c210f00fa2ce1943aacd20.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/3231d450ec3253c7b4d6bc42dc85eb2cba873c94.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/a26d646d9d4c026038e2c71d5eb4d2526899c8d0.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/a57a28e915b7d84bce94dcc3581a8a86a7ac6f2d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/c52ea86ee1077c7ce0932c26d88d523e81c43ebd.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/d7811ea181965fd206b1d8d73f5dea2de51aba26.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/cf7a71432bca4e484fd1cdf08c5da91ce61120b4.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/fe447c0b2abb28cf5b9a680cfd520400e8de3479.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/c21bd3aa447f097502d48223dd153fda92f19831.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/d225cb721dee07de655ff897cb159efd1e8b3b34.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/40fa28a08d22d7f5c3efa97d04b2e1c08d61525d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/f9995a01bbb7f3a9c83e80a7884cbe53c4953a5b.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/d62b932f3e3e8c3d196565eed533127c0cacd11.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/3c6a6908f729e60eb6a9abfe1ad7d8980d2028a9.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/f96046a8277b658aac351a9905a35d9b37c57158.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/94d68a61a3ab1c2a7896a6f580f86b959ff8756f.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/72fc60a70b1777090212d27e634b581cc242f71e.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/e527bf512ab479812f4ae032635063eb9ebb15d3.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/539065a0d8f594f2132a7ae980f9e70b846314a7.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/717bb5c035239b34a9713e6f236ae70481a29c2.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/e2cc70d824a72a091a74dd179ac6417e6cc21628.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/83eb26340d0ec0eacd25f9f1e2cb986d8865d9fd.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/45a2e18a29095a8493b82ac57a61f2823b255c15.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/fa00b493d76a05dc6a9da19b824aab211430f36c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/de59e10159242bb9061c2c65d479c1b68969beb.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/bc461c752cc58a99d502a82e5292c9b55d334e67.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/913700d79340508fbd042333d98a8cb33150876c.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/c4549e94b0962e867424861fd926ba54684f45a0.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/c8e311114cc5f4257f4f11e68326aa89a36da9f9.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/f51c2b08abe8be43a1fbc568dca156384a26bfda.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/c62d8e9a59d0103a32b20af9400d05454b6a5237.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/7e0069cf0d12e495fb9aafa9a809e38ab000458d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/2a90e8c71889e01359ddc302b12a8e48e1cfae91.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/705a2ac96738e776608ec9155228ab98fbb76375.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/cc5456f8ee01d09164c0c2bd71480512d6ba9fed.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/8020c9ca99deaa979937389adad4a88dc687fb51.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/ef8ae315080ef02f108ac04f00b20816c56e0a7d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/1937c146d872d902d572d42961986ddac3d4c115.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/c37c180f8d44b0cd1f249582398239ecf12a3b4f.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/9e7224be0400e8faa85953fedf062958094bf371.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/180db0ced25700ab9f3c927c1b1b8fc18fb93d.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/c494b7c13e81cd5c970649d6a50c0e1563d7cefc.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/9cad064ffa17f9a507c5a72009c746f506db3245.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/c3c2433564e320177520960ed023c70e7da46409.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/4103422db398dddb2bff8596d515952341580e91.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/e28db6aa7c36e940490b5a9026716a0984035c60.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/aff230275b14c1e615fac6cd0ab5ac81f5808011.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/18a4f9caa29a4fa84000185e9b2af7a8d76f0ffc.flag .generated_files/b0f84feab7c31d2f9edcd9ab7508c8bd8b4c69c8.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MZ2048EFH144_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MZ2048EFH144.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MZ2048EFH144.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/h3_tcpip_udp_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
