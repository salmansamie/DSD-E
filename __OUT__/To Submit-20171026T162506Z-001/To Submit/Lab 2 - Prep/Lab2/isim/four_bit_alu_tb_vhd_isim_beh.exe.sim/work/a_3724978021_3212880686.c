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
static const char *ng0 = "C:/Users/js317/Desktop/DSD/Lab 2 - prep/Lab2/nbit_adder.vhd";



static void work_a_3724978021_3212880686_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (14 * 1000LL);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = (4 - 1);
    t5 = (t4 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t2 = (t3 + t8);
    t9 = *((unsigned char *)t2);
    t10 = (t0 + 5048);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_delta(t10, 0U, 1, t1);
    t15 = (t0 + 5048);
    xsi_driver_intertial_reject(t15, t1, t1);

LAB2:    t16 = (t0 + 4968);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3724978021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3724978021_3212880686_p_0};
	xsi_register_didat("work_a_3724978021_3212880686", "isim/four_bit_alu_tb_vhd_isim_beh.exe.sim/work/a_3724978021_3212880686.didat");
	xsi_register_executes(pe);
}
