savedcmd_drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.o := aarch64-openwrt-linux-musl-gcc -Wp,-MMD,drivers/base/firmware_loader/builtin/airoha/.EthMD32.dm.bin.gen.o.d -nostdinc -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -fmacro-prefix-map=./= -Werror -D__ASSEMBLY__ -fno-PIE -mabi=lp64 -fno-asynchronous-unwind-tables -fno-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT= -g    -c -o drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.o drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.S 

source_drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.o := drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.S

deps_drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.o := \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \

drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.o: $(deps_drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.o)

$(deps_drivers/base/firmware_loader/builtin/airoha/EthMD32.dm.bin.gen.o):
