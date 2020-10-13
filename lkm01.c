#include <linux/init.h>
#include <linux/module.h>

int lkm_simple_module_init(void)
{
	printk(KERN_ALERT "Inside the %s function\n",__FUNCTION__);
	return 0;
}

void lkm_simple_module_exit(void)
{
	printk(KERN_ALERT "Inside the %s function\n",__FUNCTION__);
}

module_init(lkm_simple_module_init);
module_exit(lkm_simple_module_exit);
