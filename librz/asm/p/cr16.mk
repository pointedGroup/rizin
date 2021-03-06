OBJ_CR16=asm_cr16.o
CR16_ROOT=$(LIBRZ)/asm/arch/cr16
OBJ_CR16+=$(CR16_ROOT)/cr16_disas.o
CFLAGS+=-I$(CR16_ROOT)


STATIC_OBJ+=${OBJ_CR16}
TARGET_CR16=asm_cr16.${EXT_SO}

ifeq ($(WITHPIC),1)
ALL_TARGETS+=${TARGET_CR16}

${TARGET_CR16}: ${OBJ_CR16}
	${CC} ${LDFLAGS} ${CFLAGS} -o ${TARGET_CR16} ${OBJ_CR16}
endif
