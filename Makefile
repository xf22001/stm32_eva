##########################################################################################################################
# File automatically-generated by tool: [projectgenerator] version: [3.11.0-B13] date: [Wed Dec 09 14:30:44 CST 2020] 
##########################################################################################################################

# ------------------------------------------------
# Generic Makefile (based on gcc)
#
# ChangeLog :
#	2017-02-10 - Several enhancements + project update mode
#   2015-07-22 - first version
# ------------------------------------------------

######################################
# target
######################################
TARGET = eva


######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og


#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
Src/main.c \
Src/gpio.c \
Src/freertos.c \
Src/can.c \
Src/dma.c \
Src/fatfs.c \
Src/iwdg.c \
Src/lwip.c \
Src/ethernetif.c \
Src/mbedtls.c \
Src/net_sockets.c \
Src/hardware_rng.c \
Src/rng.c \
Src/spi.c \
Src/tim.c \
Src/usart.c \
Src/usb_host.c \
Src/usbh_conf.c \
Src/usbh_platform.c \
Src/stm32f2xx_it.c \
Src/stm32f2xx_hal_msp.c \
Src/stm32f2xx_hal_timebase_tim.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_eth.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_rcc.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_rcc_ex.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_cortex.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_flash.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_flash_ex.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_pwr.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_pwr_ex.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_gpio.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_dma.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_dma_ex.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_exti.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_hcd.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_usb.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_can.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_iwdg.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_rng.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_spi.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_tim.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_tim_ex.c \
Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_uart.c \
Src/system_stm32f2xx.c \
Middlewares/Third_Party/FatFs/src/diskio.c \
Middlewares/Third_Party/FatFs/src/ff.c \
Middlewares/Third_Party/FatFs/src/ff_gen_drv.c \
Middlewares/Third_Party/FatFs/src/option/syscall.c \
Middlewares/Third_Party/FatFs/src/drivers/usbh_diskio.c \
Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
Middlewares/Third_Party/FreeRTOS/Source/list.c \
Middlewares/Third_Party/FreeRTOS/Source/queue.c \
Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c \
Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
Middlewares/Third_Party/FreeRTOS/Source/timers.c \
Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c \
Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c \
Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/auth.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/ccp.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/chap_ms.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/chap-md5.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/chap-new.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/demand.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/eap.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/eui64.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/fsm.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/ipcp.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/ipv6cp.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/lcp.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/magic.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/mppe.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/multilink.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/ppp.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/pppapi.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/pppcrypt.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/pppoe.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/pppol2tp.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/pppos.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/upap.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/utils.c \
Middlewares/Third_Party/LwIP/src/netif/ppp/vj.c \
Middlewares/Third_Party/LwIP/src/netif/ethernet.c \
Middlewares/Third_Party/LwIP/src/netif/slipif.c \
Middlewares/Third_Party/LwIP/src/netif/lowpan6.c \
Middlewares/Third_Party/LwIP/src/api/sockets.c \
Middlewares/Third_Party/LwIP/src/api/api_lib.c \
Middlewares/Third_Party/LwIP/src/api/netdb.c \
Middlewares/Third_Party/LwIP/src/api/netbuf.c \
Middlewares/Third_Party/LwIP/src/api/api_msg.c \
Middlewares/Third_Party/LwIP/src/api/tcpip.c \
Middlewares/Third_Party/LwIP/src/api/netifapi.c \
Middlewares/Third_Party/LwIP/src/api/err.c \
Middlewares/Third_Party/LwIP/src/core/inet_chksum.c \
Middlewares/Third_Party/LwIP/src/core/dns.c \
Middlewares/Third_Party/LwIP/src/core/tcp_out.c \
Middlewares/Third_Party/LwIP/src/core/pbuf.c \
Middlewares/Third_Party/LwIP/src/core/stats.c \
Middlewares/Third_Party/LwIP/src/core/timeouts.c \
Middlewares/Third_Party/LwIP/src/core/ip.c \
Middlewares/Third_Party/LwIP/src/core/tcp_in.c \
Middlewares/Third_Party/LwIP/src/core/mem.c \
Middlewares/Third_Party/LwIP/src/core/memp.c \
Middlewares/Third_Party/LwIP/src/core/init.c \
Middlewares/Third_Party/LwIP/src/core/def.c \
Middlewares/Third_Party/LwIP/src/core/udp.c \
Middlewares/Third_Party/LwIP/src/core/tcp.c \
Middlewares/Third_Party/LwIP/src/core/sys.c \
Middlewares/Third_Party/LwIP/src/core/raw.c \
Middlewares/Third_Party/LwIP/src/core/netif.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/dhcp.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/autoip.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/icmp.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/igmp.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/ip4_frag.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/ip4_addr.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/etharp.c \
Middlewares/Third_Party/LwIP/src/core/ipv4/ip4.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/ip6.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/ip6_addr.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/mld6.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/ethip6.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/icmp6.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/dhcp6.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/ip6_frag.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/inet6.c \
Middlewares/Third_Party/LwIP/src/core/ipv6/nd6.c \
Middlewares/Third_Party/LwIP/system/OS/sys_arch.c \
Middlewares/Third_Party/LwIP/src/apps/mqtt/mqtt.c \
Middlewares/Third_Party/mbedTLS/library/aes.c \
Middlewares/Third_Party/mbedTLS/library/aesni.c \
Middlewares/Third_Party/mbedTLS/library/arc4.c \
Middlewares/Third_Party/mbedTLS/library/aria.c \
Middlewares/Third_Party/mbedTLS/library/asn1parse.c \
Middlewares/Third_Party/mbedTLS/library/asn1write.c \
Middlewares/Third_Party/mbedTLS/library/base64.c \
Middlewares/Third_Party/mbedTLS/library/bignum.c \
Middlewares/Third_Party/mbedTLS/library/blowfish.c \
Middlewares/Third_Party/mbedTLS/library/camellia.c \
Middlewares/Third_Party/mbedTLS/library/ccm.c \
Middlewares/Third_Party/mbedTLS/library/certs.c \
Middlewares/Third_Party/mbedTLS/library/chacha20.c \
Middlewares/Third_Party/mbedTLS/library/chachapoly.c \
Middlewares/Third_Party/mbedTLS/library/cipher.c \
Middlewares/Third_Party/mbedTLS/library/cipher_wrap.c \
Middlewares/Third_Party/mbedTLS/library/cmac.c \
Middlewares/Third_Party/mbedTLS/library/ctr_drbg.c \
Middlewares/Third_Party/mbedTLS/library/debug.c \
Middlewares/Third_Party/mbedTLS/library/des.c \
Middlewares/Third_Party/mbedTLS/library/dhm.c \
Middlewares/Third_Party/mbedTLS/library/ecdh.c \
Middlewares/Third_Party/mbedTLS/library/ecdsa.c \
Middlewares/Third_Party/mbedTLS/library/ecjpake.c \
Middlewares/Third_Party/mbedTLS/library/ecp.c \
Middlewares/Third_Party/mbedTLS/library/ecp_curves.c \
Middlewares/Third_Party/mbedTLS/library/entropy.c \
Middlewares/Third_Party/mbedTLS/library/entropy_poll.c \
Middlewares/Third_Party/mbedTLS/library/error.c \
Middlewares/Third_Party/mbedTLS/library/gcm.c \
Middlewares/Third_Party/mbedTLS/library/havege.c \
Middlewares/Third_Party/mbedTLS/library/hkdf.c \
Middlewares/Third_Party/mbedTLS/library/hmac_drbg.c \
Middlewares/Third_Party/mbedTLS/library/md.c \
Middlewares/Third_Party/mbedTLS/library/md2.c \
Middlewares/Third_Party/mbedTLS/library/md4.c \
Middlewares/Third_Party/mbedTLS/library/md5.c \
Middlewares/Third_Party/mbedTLS/library/md_wrap.c \
Middlewares/Third_Party/mbedTLS/library/memory_buffer_alloc.c \
Middlewares/Third_Party/mbedTLS/library/nist_kw.c \
Middlewares/Third_Party/mbedTLS/library/oid.c \
Middlewares/Third_Party/mbedTLS/library/padlock.c \
Middlewares/Third_Party/mbedTLS/library/pem.c \
Middlewares/Third_Party/mbedTLS/library/pk.c \
Middlewares/Third_Party/mbedTLS/library/pkcs11.c \
Middlewares/Third_Party/mbedTLS/library/pkcs12.c \
Middlewares/Third_Party/mbedTLS/library/pkcs5.c \
Middlewares/Third_Party/mbedTLS/library/pkparse.c \
Middlewares/Third_Party/mbedTLS/library/pkwrite.c \
Middlewares/Third_Party/mbedTLS/library/pk_wrap.c \
Middlewares/Third_Party/mbedTLS/library/platform.c \
Middlewares/Third_Party/mbedTLS/library/platform_util.c \
Middlewares/Third_Party/mbedTLS/library/poly1305.c \
Middlewares/Third_Party/mbedTLS/library/ripemd160.c \
Middlewares/Third_Party/mbedTLS/library/rsa.c \
Middlewares/Third_Party/mbedTLS/library/rsa_internal.c \
Middlewares/Third_Party/mbedTLS/library/sha1.c \
Middlewares/Third_Party/mbedTLS/library/sha256.c \
Middlewares/Third_Party/mbedTLS/library/sha512.c \
Middlewares/Third_Party/mbedTLS/library/ssl_cache.c \
Middlewares/Third_Party/mbedTLS/library/ssl_ciphersuites.c \
Middlewares/Third_Party/mbedTLS/library/ssl_cli.c \
Middlewares/Third_Party/mbedTLS/library/ssl_cookie.c \
Middlewares/Third_Party/mbedTLS/library/ssl_srv.c \
Middlewares/Third_Party/mbedTLS/library/ssl_ticket.c \
Middlewares/Third_Party/mbedTLS/library/ssl_tls.c \
Middlewares/Third_Party/mbedTLS/library/threading.c \
Middlewares/Third_Party/mbedTLS/library/timing.c \
Middlewares/Third_Party/mbedTLS/library/version.c \
Middlewares/Third_Party/mbedTLS/library/version_features.c \
Middlewares/Third_Party/mbedTLS/library/x509.c \
Middlewares/Third_Party/mbedTLS/library/x509write_crt.c \
Middlewares/Third_Party/mbedTLS/library/x509write_csr.c \
Middlewares/Third_Party/mbedTLS/library/x509_create.c \
Middlewares/Third_Party/mbedTLS/library/x509_crl.c \
Middlewares/Third_Party/mbedTLS/library/x509_crt.c \
Middlewares/Third_Party/mbedTLS/library/x509_csr.c \
Middlewares/Third_Party/mbedTLS/library/xtea.c \
Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c \
Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c \
Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c \
Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c \
Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc.c \
Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc_bot.c \
Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc_scsi.c

# ASM sources
ASM_SOURCES =  \
startup_stm32f207xx.s


#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m3

# fpu
# NONE for Cortex-M0/M0+/M3

# float-abi


# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DMBEDTLS_CONFIG_FILE=\"mbedtls_config.h\" \
-DUSE_HAL_DRIVER \
-DSTM32F207xx


# AS includes
AS_INCLUDES =  \
-IInc

# C includes
C_INCLUDES =  \
-IInc \
-IMiddlewares/Third_Party/LwIP/src/include \
-IMiddlewares/Third_Party/LwIP/system \
-IDrivers/STM32F2xx_HAL_Driver/Inc \
-IDrivers/STM32F2xx_HAL_Driver/Inc/Legacy \
-IMiddlewares/Third_Party/FreeRTOS/Source/include \
-IMiddlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS \
-IMiddlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 \
-IMiddlewares/Third_Party/FatFs/src \
-IMiddlewares/Third_Party/FatFs/src/drivers \
-IMiddlewares/Third_Party/LwIP/src/include/netif/ppp \
-IMiddlewares/ST/STM32_USB_Host_Library/Core/Inc \
-IMiddlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc \
-IDrivers/CMSIS/Device/ST/STM32F2xx/Include \
-IMiddlewares/Third_Party/LwIP/src/include/lwip \
-IMiddlewares/Third_Party/LwIP/src/include/lwip/apps \
-IMiddlewares/Third_Party/LwIP/src/include/lwip/priv \
-IMiddlewares/Third_Party/LwIP/src/include/lwip/prot \
-IMiddlewares/Third_Party/LwIP/src/include/netif \
-IMiddlewares/Third_Party/LwIP/src/include/posix \
-IMiddlewares/Third_Party/LwIP/src/include/posix/sys \
-IMiddlewares/Third_Party/LwIP/system/arch \
-IMiddlewares/Third_Party/mbedTLS/include/mbedtls \
-IMiddlewares/Third_Party/mbedTLS/include \
-IDrivers/CMSIS/Include


# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS = $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = STM32F207VETx_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections
include user.mk

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

include override.mk

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
