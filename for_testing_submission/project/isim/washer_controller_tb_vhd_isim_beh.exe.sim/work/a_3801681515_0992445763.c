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
static const char *ng0 = "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/microprogram_cdp_test_VHDL/NOT.vhd";



static void work_a_3801681515_0992445763_p_0(char *t0)
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

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(25, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 2752);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t9 = (t0 + 2752);
    xsi_driver_intertial_reject(t9, t5, t5);

LAB3:    t1 = (t0 + 2672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t5 = (7 * 1000LL);
    t1 = (t0 + 2752);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, t5);
    t10 = (t0 + 2752);
    xsi_driver_intertial_reject(t10, t5, t5);
    goto LAB3;

}


extern void work_a_3801681515_0992445763_init()
{
	static char *pe[] = {(void *)work_a_3801681515_0992445763_p_0};
	xsi_register_didat("work_a_3801681515_0992445763", "isim/washer_controller_tb_vhd_isim_beh.exe.sim/work/a_3801681515_0992445763.didat");
	xsi_register_executes(pe);
}
