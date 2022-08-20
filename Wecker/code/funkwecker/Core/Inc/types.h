/*
 * types.h
 *
 *  Created on: Aug 20, 2022
 *      Author: alex
 */

#ifndef INC_TYPES_H_
#define INC_TYPES_H_

#include "stm32f1xx_hal_def.h"

#define StatusTypeDef HAL_StatusTypeDef
#define OK HAL_OK
#define ERROR HAL_ERROR
#define BUSY HAL_BUSY
#define TIMEOUT HAL_TIMEOUT

typedef enum
{
    INIT_OK = 0x00,
    INIT_BUSY,
    INIT_ERROR
}ControllerInitStatus;



#endif /* INC_TYPES_H_ */
