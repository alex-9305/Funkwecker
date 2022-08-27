/*
 * init.c
 *
 *  Created on: Aug 20, 2022
 *      Author: alex
 */

#include "init.h"



void action_based_on_controller_init(ControllerInitStatus controller_init_status)
{
    switch(controller_init_status)
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

ControllerInitStatus check_controller_init(Controller_StatusTypeDef controller_init_status)
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

void init_controller(void)
{
    Controller_StatusTypeDef hal_status = HAL_Init();
    ControllerInitStatus init_status = check_controller_init(hal_status);
    action_based_on_controller_init(init_status);
}

// /**
//   * @brief System Clock Configuration
//   * @retval None
//   */
// void SystemClock_Config(void)
// {
//   RCC_OscInitTypeDef RCC_OscInitStruct = {0};
//   RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

//   /** Initializes the RCC Oscillators according to the specified parameters
//   * in the RCC_OscInitTypeDef structure.
//   */
//   RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
//   RCC_OscInitStruct.HSEState = RCC_HSE_ON;
//   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
//   if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
//   {
//     Error_Handler();
//   }

//   /** Initializes the CPU, AHB and APB buses clocks
//   */
//   RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
//                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
//   RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSE;
//   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV8;
//   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
//   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

//   if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
//   {
//     Error_Handler();
//   }
// }

// /**
//   * @brief TIM2 Initialization Function
//   * @param None
//   * @retval None
//   */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 65535;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

// /**
//   * @brief GPIO Initialization Function
//   * @param None
//   * @retval None
//   */
// static void MX_GPIO_Init(void)
// {
//   GPIO_InitTypeDef GPIO_InitStruct = {0};

//   /* GPIO Ports Clock Enable */
//   __HAL_RCC_GPIOC_CLK_ENABLE();
//   __HAL_RCC_GPIOD_CLK_ENABLE();
//   __HAL_RCC_GPIOA_CLK_ENABLE();
//   __HAL_RCC_GPIOB_CLK_ENABLE();

//   /*Configure GPIO pin Output Level */
//   HAL_GPIO_WritePin(GPIOB, OUT_LED_DISPLAY_CLK_Pin|OUT_LED_DISPLAY_DATA_Pin, GPIO_PIN_SET);

//   /*Configure GPIO pin Output Level */
//   HAL_GPIO_WritePin(OUT_TEST_LED_GPIO_Port, OUT_TEST_LED_Pin, GPIO_PIN_RESET);

//   /*Configure GPIO pins : PC13 PC14 PC15 */
//   GPIO_InitStruct.Pin = GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15;
//   GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
//   HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

//   /*Configure GPIO pins : PA0 PA1 PA2 PA3
//                            PA4 PA5 PA6 PA7
//                            PA8 PA9 PA10 PA11
//                            PA12 PA13 PA14 PA15 */
//   GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3
//                           |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7
//                           |GPIO_PIN_8|GPIO_PIN_9|GPIO_PIN_10|GPIO_PIN_11
//                           |GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15;
//   GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
//   HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

//   /*Configure GPIO pins : PB0 PB1 PB10 PB11
//                            PB15 PB3 PB4 PB5
//                            PB6 PB7 PB8 PB9 */
//   GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_10|GPIO_PIN_11
//                           |GPIO_PIN_15|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5
//                           |GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9;
//   GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
//   HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

//   /*Configure GPIO pin : IN_DCF_Pin */
//   GPIO_InitStruct.Pin = IN_DCF_Pin;
//   GPIO_InitStruct.Mode = GPIO_MODE_EVT_RISING_FALLING;
//   GPIO_InitStruct.Pull = GPIO_NOPULL;
//   HAL_GPIO_Init(IN_DCF_GPIO_Port, &GPIO_InitStruct);

//   /*Configure GPIO pins : OUT_LED_DISPLAY_CLK_Pin OUT_LED_DISPLAY_DATA_Pin */
//   GPIO_InitStruct.Pin = OUT_LED_DISPLAY_CLK_Pin|OUT_LED_DISPLAY_DATA_Pin;
//   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
//   GPIO_InitStruct.Pull = GPIO_PULLUP;
//   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
//   HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

//   /*Configure GPIO pin : OUT_TEST_LED_Pin */
//   GPIO_InitStruct.Pin = OUT_TEST_LED_Pin;
//   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
//   GPIO_InitStruct.Pull = GPIO_NOPULL;
//   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
//   HAL_GPIO_Init(OUT_TEST_LED_GPIO_Port, &GPIO_InitStruct);

// }

// /* USER CODE BEGIN 4 */

// /* USER CODE END 4 */

// /**
//   * @brief  This function is executed in case of error occurrence.
//   * @retval None
//   */
// void Error_Handler(void)
// {
//   /* USER CODE BEGIN Error_Handler_Debug */
//   /* User can add his own implementation to report the HAL error return state */
//   __disable_irq();
//   while (1)
//   {
//   }
//   /* USER CODE END Error_Handler_Debug */
}

