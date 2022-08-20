/*
 * init.c
 *
 *  Created on: Aug 20, 2022
 *      Author: alex
 */

#include "init.h"

void init_controller(void)
{
    StatusTypeDef hal_status = HAL_Init();
    ControllerInitStatus init_status = check_controller_init(hal_status);
    switch(init_status)
    {
        case INIT_OK:
        {
            return;
            break;
        }

        case INIT_ERROR: 
        case INIT_BUSY:
        default:
        {
            NVIC_SystemReset;
            break;
        }
    }
}

ControllerInitStatus check_controller_init(StatusTypeDef controller_init_status)
{
    ControllerInitStatus checked_status;
    switch(controller_init_status)
    {
        case OK:
        {
            checked_status = INIT_OK;
            break;
        }

        case ERROR:
        {
            checked_status = INIT_ERROR;
            break;
        }

        case BUSY:
        {
            checked_status = INIT_BUSY;
            break;
        }

        case TIMEOUT:
        {
            checked_status = INIT_ERROR;
            break;
        }
        default:
            checked_status = INIT_ERROR;
            break;
    }
    return checked_status;
}
