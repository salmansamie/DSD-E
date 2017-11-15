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
static const char *ng0 = "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/microprogram_cdp_test_VHDL/d_flipflop.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0020942060_1878664202_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(14, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(16, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3392);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t10 = (t0 + 3392);
    xsi_driver_intertial_reject(t10, t5, t5);
    xsi_set_current_line(17, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3456);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 3456);
    xsi_driver_intertial_reject(t9, t5, t5);
    goto LAB3;

LAB5:    xsi_set_current_line(21, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3392);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t10 = (t0 + 3392);
    xsi_driver_intertial_reject(t10, t5, t5);
    xsi_set_current_line(22, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 3456);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 3456);
    xsi_driver_intertial_reject(t9, t5, t5);
    goto LAB3;

LAB7:    xsi_set_current_line(26, ng0);
    t5 = (7 * 1000LL);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t13 = *((unsigned char *)t7);
    t2 = (t0 + 3392);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = t13;
    xsi_driver_first_trans_delta(t2, 0U, 1, t5);
    t15 = (t0 + 3392);
    xsi_driver_intertial_reject(t15, t5, t5);
    xsi_set_current_line(27, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3456);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t10 = (t0 + 3456);
    xsi_driver_intertial_reject(t10, t5, t5);
    goto LAB3;

LAB9:    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB11;

}


extern void work_a_0020942060_1878664202_init()
{
	static char *pe[] = {(void *)work_a_0020942060_1878664202_p_0};
	xsi_register_didat("work_a_0020942060_1878664202", "isim/nbit_loadhold_triout_reg_tb_isim_beh.exe.sim/work/a_0020942060_1878664202.didat");
	xsi_register_executes(pe);
}
