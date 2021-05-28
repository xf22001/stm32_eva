

/*================================================================
 *
 *
 *   文件名称：uart_debug_handler.c
 *   创 建 者：肖飞
 *   创建日期：2020年05月13日 星期三 13时18分00秒
 *   修改日期：2021年05月28日 星期五 14时48分53秒
 *   描    述：
 *
 *================================================================*/
#include "uart_debug_handler.h"

#include <time.h>
#include <stdio.h>

#include "test_event.h"
#include "iap.h"

#define LOG_UART
#include "log.h"

static void fn1(char *arguments)
{
	_printf("%s:%s:%d arguments:\'%s\'\n", __FILE__, __func__, __LINE__, arguments);
}

static void fn2(char *arguments)
{
	try_get_test_event();
}

//3 2021-05-28-14-16-02
static void fn3(char *arguments)
{
	struct tm tm = {0};
	char dt[20];
	char bcd[8];

	debug("arguments: '%s'", arguments);
	sscanf(arguments, "%19s", dt);
	_hexdump("dt", dt, sizeof(dt));
	debug("dt: '%s'", dt);

	debug("test strptime...");
	strptime(dt, "%Y-%m-%d-%H-%M-%S", &tm);
	debug("tm %04d-%02d-%02d %02d:%02d:%02d",
	      tm.tm_year + 1900,
	      tm.tm_mon + 1,
	      tm.tm_mday,
	      tm.tm_hour,
	      tm.tm_min,
	      tm.tm_sec);

	debug("test strftime...");
	strftime(dt, sizeof(dt), "%Y%m%d%H%M%S", &tm);
	_hexdump("dt", dt, sizeof(dt));
	debug("dt: '%s'", dt);

	debug("test ascii_to_bcd...");
	memset(bcd, 0xff, sizeof(bcd));
	ascii_to_bcd(dt, strlen(dt), bcd, sizeof(bcd));
	_hexdump("bcd", bcd, sizeof(bcd));

	debug("test bcd_to_ascii...");
	memset(dt, 0, sizeof(dt));
	bcd_to_ascii(dt, sizeof(dt), bcd, sizeof(bcd));
	_hexdump("dt", dt, sizeof(dt));
}

uint16_t osGetCPUUsage(void);
static void fn5(char *arguments)
{
	int size = xPortGetFreeHeapSize();
	uint8_t *os_thread_info;
	uint32_t ticks = osKernelSysTick();
	uint16_t cpu_usage = osGetCPUUsage();
	size_t total_heap_size = get_total_heap_size();
	size_t heap_size;
	size_t heap_count;
	size_t heap_max_size;

	get_mem_info(&heap_size, &heap_count,  &heap_max_size);

	_printf("cpu usage:%d\n", cpu_usage);
	_printf("free os heap size:%d\n", size);
	_printf("total heap size:%d, free heap size:%d, used:%d, heap count:%d, max heap size:%d\n",
	        total_heap_size,
	        total_heap_size - heap_size,
	        heap_size,
	        heap_count,
	        heap_max_size);
	_printf("current ticks:%lu\n", ticks);
	_printf("%lu day %lu hour %lu min %lu sec\n",
	        ticks / (1000 * 60 * 60 * 24),//day
	        (ticks % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60),//hour
	        (ticks % (1000 * 60 * 60)) / (1000 * 60),//min
	        (ticks % (1000 * 60)) / (1000)//sec
	       );

	if(size < 4 * 1024) {
		return;
	}

	size = 1024;

	os_thread_info = (uint8_t *)os_alloc(size);

	if(os_thread_info == NULL) {
		return;
	}

	osThreadList(os_thread_info);

	_puts((const char *)os_thread_info);

	os_free(os_thread_info);

	if(is_app() == 1) {
		_printf("in app!\n");
	} else {
		_printf("in bootloader!\n");
	}
}

static uart_fn_item_t uart_fn_map[] = {
	{1, fn1},
	{2, fn2},
	{3, fn3},
	{5, fn5},
};

uart_fn_map_info_t uart_fn_map_info = {
	.uart_fn_map = uart_fn_map,
	.uart_fn_map_size = sizeof(uart_fn_map) / sizeof(uart_fn_item_t),
};
