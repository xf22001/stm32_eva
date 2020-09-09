

/*================================================================
 *   
 *   
 *   文件名称：global_cls.h
 *   创 建 者：肖飞
 *   创建日期：2020年09月09日 星期三 14时25分34秒
 *   修改日期：2020年09月09日 星期三 15时04分00秒
 *   描    述：
 *
 *================================================================*/
#ifndef _GLOBAL_CLS_H
#define _GLOBAL_CLS_H
#ifdef __cplusplus
extern "C"
{
#endif

#ifdef __cplusplus
}
#endif

typedef enum {
	GLOBAL_CLS_NONE = 0,
	GLOBAL_CLS_UART,
	GLOBAL_CLS_CAN,
	GLOBAL_CLS_SPI,
	GLOBAL_CLS_SPI,
	GLOBAL_CLS_EEPROM,
	GLOBAL_CLS_MODBUS_MASTER,
	GLOBAL_CLS_MODBUS_SLAVE,
	GLOBAL_CLS_DLT_645,
	GLOBAL_CLS_POLL_LOOP,
} global_cls_t

#endif //_GLOBAL_CLS_H
