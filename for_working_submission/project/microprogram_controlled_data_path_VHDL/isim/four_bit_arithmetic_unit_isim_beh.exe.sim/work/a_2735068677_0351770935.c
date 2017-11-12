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
static const char *ng0 = "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/src/lab1/half_adder.vhd";



static void work_a_2735068677_0351770935_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    int64 t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB15;

LAB16:    t1 = (unsigned char)0;

LAB17:    if (t1 != 0)
        goto LAB13;

LAB14:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB20;

LAB21:    t1 = (unsigned char)0;

LAB22:    if (t1 != 0)
        goto LAB18;

LAB19:    xsi_set_current_line(40, ng0);
    t9 = (21 * 1000LL);
    t2 = (t0 + 3072);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t12 = (t0 + 3072);
    xsi_driver_intertial_reject(t12, t9, t9);
    xsi_set_current_line(41, ng0);
    t9 = (14 * 1000LL);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t12 = (t0 + 3136);
    xsi_driver_intertial_reject(t12, t9, t9);

LAB3:    t2 = (t0 + 2992);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t9 = (21 * 1000LL);
    t2 = (t0 + 3072);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t14 = (t0 + 3072);
    xsi_driver_intertial_reject(t14, t9, t9);
    xsi_set_current_line(29, ng0);
    t9 = (14 * 1000LL);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t12 = (t0 + 3136);
    xsi_driver_intertial_reject(t12, t9, t9);
    goto LAB3;

LAB5:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(31, ng0);
    t9 = (21 * 1000LL);
    t2 = (t0 + 3072);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t14 = (t0 + 3072);
    xsi_driver_intertial_reject(t14, t9, t9);
    xsi_set_current_line(32, ng0);
    t9 = (14 * 1000LL);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t12 = (t0 + 3136);
    xsi_driver_intertial_reject(t12, t9, t9);
    goto LAB3;

LAB10:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB12;

LAB13:    xsi_set_current_line(34, ng0);
    t9 = (21 * 1000LL);
    t2 = (t0 + 3072);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t14 = (t0 + 3072);
    xsi_driver_intertial_reject(t14, t9, t9);
    xsi_set_current_line(35, ng0);
    t9 = (14 * 1000LL);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t12 = (t0 + 3136);
    xsi_driver_intertial_reject(t12, t9, t9);
    goto LAB3;

LAB15:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB17;

LAB18:    xsi_set_current_line(37, ng0);
    t9 = (21 * 1000LL);
    t2 = (t0 + 3072);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t14 = (t0 + 3072);
    xsi_driver_intertial_reject(t14, t9, t9);
    xsi_set_current_line(38, ng0);
    t9 = (14 * 1000LL);
    t2 = (t0 + 3136);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t9);
    t12 = (t0 + 3136);
    xsi_driver_intertial_reject(t12, t9, t9);
    goto LAB3;

LAB20:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB22;

}


extern void work_a_2735068677_0351770935_init()
{
	static char *pe[] = {(void *)work_a_2735068677_0351770935_p_0};
	xsi_register_didat("work_a_2735068677_0351770935", "isim/four_bit_arithmetic_unit_isim_beh.exe.sim/work/a_2735068677_0351770935.didat");
	xsi_register_executes(pe);
}
