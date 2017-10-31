/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/js317/Desktop/DSD/Lab1/four_input_nor.vhd";



static void work_a_0401929213_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    int64 t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t17 = (7 * 1000LL);
    t2 = (t0 + 3232);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t11 = (t7 + 56U);
    t14 = *((char **)t11);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t17);
    t18 = (t0 + 3232);
    xsi_driver_intertial_reject(t18, t17, t17);

LAB3:    t2 = (t0 + 3152);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t17 = (7 * 1000LL);
    t2 = (t0 + 3232);
    t18 = (t2 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t17);
    t22 = (t0 + 3232);
    xsi_driver_intertial_reject(t22, t17, t17);
    goto LAB3;

LAB5:    t2 = (t0 + 1192U);
    t7 = *((char **)t2);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB8;

LAB9:    t6 = (unsigned char)0;

LAB10:    t1 = t6;
    goto LAB7;

LAB8:    t2 = (t0 + 1352U);
    t11 = *((char **)t2);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)2);
    if (t13 == 1)
        goto LAB11;

LAB12:    t10 = (unsigned char)0;

LAB13:    t6 = t10;
    goto LAB10;

LAB11:    t2 = (t0 + 1512U);
    t14 = *((char **)t2);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)2);
    t10 = t16;
    goto LAB13;

}


extern void work_a_0401929213_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0401929213_3212880686_p_0};
	xsi_register_didat("work_a_0401929213_3212880686", "isim/four_input_nor_tb_isim_beh.exe.sim/work/a_0401929213_3212880686.didat");
	xsi_register_executes(pe);
}
