#ifndef _ERROR_H_
#define _ERROR_H_

#include "../os/suzuha_os.h"

#define ERROR_LINE_SENSOR             (u32)(1)
#define ERROR_IMU                     (u32)(2)

void abort_error_(u32 error_code, u32 error_param);

#endif
