/*
 * init.h
 *
 *  Created on: Aug 20, 2022
 *      Author: alex
 */

#ifndef INC_INIT_H_
#define INC_INIT_H_

#include "types.h"
#include "core_cm3.h"
#include "stm32f1xx_hal.h"
#include "defines.h"

void action_based_on_controller_init(ControllerInitStatus controller_init_status);
ControllerInitStatus check_controller_init(Controller_StatusTypeDef controller_init_status);
void init_controller(void);
void init_gpios(void);
void init_clock(void);
void init_timer(void);


#endif /* INC_INIT_H_ */
