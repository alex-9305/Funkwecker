/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#include "init.h"
#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"


/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* Private defines -----------------------------------------------------------*/
#define IN_DCF_Pin GPIO_PIN_2
#define IN_DCF_GPIO_Port GPIOB
#define OUT_LED_DISPLAY_CLK_Pin GPIO_PIN_12
#define OUT_LED_DISPLAY_CLK_GPIO_Port GPIOB
#define OUT_LED_DISPLAY_DATA_Pin GPIO_PIN_13
#define OUT_LED_DISPLAY_DATA_GPIO_Port GPIOB
#define OUT_TEST_LED_Pin GPIO_PIN_14
#define OUT_TEST_LED_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
