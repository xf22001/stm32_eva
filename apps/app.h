

/*================================================================
 *   
 *   
 *   文件名称：app.h
 *   创 建 者：肖飞
 *   创建日期：2019年10月11日 星期五 16时56分29秒
 *   修改日期：2020年07月31日 星期五 17时12分03秒
 *   描    述：
 *
 *================================================================*/
#ifndef _APP_H
#define _APP_H
#ifdef __cplusplus
extern "C"
{
#endif

#ifdef __cplusplus
}
#endif
#define VER_MAJOR 0
#define VER_MINOR 0
#if defined(USER_APP)
#define VER_REV 1
#else
#define VER_REV 0
#endif
#define VER_BUILD 0

typedef struct {
	char device_id[32];
	char host[256];
	char port[8];
	char path[256];
} app_info_t;

app_info_t *get_app_info(void);
int app_save_config(void);
void app(void const *argument);
void idle(void const *argument);
#endif //_APP_H
