
#include "../../SERVICE/STD_TYPES.h"
#include "../../SERVICE/BIT_MATH.h"

#include "GIE_interface.h"
#include "GIE_register.h"

void GIE_vidEnable(void)
{
	SET_BIT(SREG,SREG_I);
}

void GIE_vidDisable(void)
{
	CLR_BIT(SREG,SREG_I);
}
