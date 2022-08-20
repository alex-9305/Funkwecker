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

void init_controller(void);
ControllerInitStatus check_controller_init(StatusTypeDef controller_init_status);



#endif /* INC_INIT_H_ */
