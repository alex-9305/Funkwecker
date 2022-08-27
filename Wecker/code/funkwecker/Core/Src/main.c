/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"

int main(void)
{
  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  init_controller();

  /* Configure the system clock */
  // SystemClock_Config();

  /* Initialize all configured peripherals */
  // MX_GPIO_Init();
  // MX_TIM2_Init();
  while (1)
  {

  }
}
