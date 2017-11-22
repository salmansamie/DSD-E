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
static const char *ng0 = "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/test/lab4/nbit_incrementer_tb.vhd";



static void work_a_0399200291_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    unsigned char t12;

LAB0:    t1 = (t0 + 2672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2480);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3056);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5262);
    t5 = (t0 + 3120);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(66, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2480);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5266);
    t10 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t10 = 0;

LAB16:    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3056);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2480);
    xsi_process_wait(t2, t3);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t8 = (t0 + 5270);
    xsi_report(t8, 26U, 2);
    goto LAB13;

LAB14:    t11 = 0;

LAB17:    if (t11 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t11 = (t11 + 1);
    goto LAB17;

LAB20:    t2 = (t0 + 5296);
    xsi_report(t2, 25U, 2);
    goto LAB21;

LAB22:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5321);
    t10 = 1;
    if (4U == 4U)
        goto LAB28;

LAB29:    t10 = 0;

LAB30:    if (t10 == 0)
        goto LAB26;

LAB27:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB34;

LAB35:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3056);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5376);
    t5 = (t0 + 3120);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2480);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB26:    t8 = (t0 + 5325);
    xsi_report(t8, 26U, 2);
    goto LAB27;

LAB28:    t11 = 0;

LAB31:    if (t11 < 4U)
        goto LAB32;
    else
        goto LAB30;

LAB32:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB29;

LAB33:    t11 = (t11 + 1);
    goto LAB31;

LAB34:    t2 = (t0 + 5351);
    xsi_report(t2, 25U, 2);
    goto LAB35;

LAB36:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5380);
    t10 = 1;
    if (4U == 4U)
        goto LAB42;

LAB43:    t10 = 0;

LAB44:    if (t10 == 0)
        goto LAB40;

LAB41:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t12 = (t10 == (unsigned char)3);
    if (t12 == 0)
        goto LAB48;

LAB49:    xsi_set_current_line(92, ng0);

LAB52:    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    t8 = (t0 + 5384);
    xsi_report(t8, 26U, 2);
    goto LAB41;

LAB42:    t11 = 0;

LAB45:    if (t11 < 4U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB43;

LAB47:    t11 = (t11 + 1);
    goto LAB45;

LAB48:    t2 = (t0 + 5410);
    xsi_report(t2, 25U, 2);
    goto LAB49;

LAB50:    goto LAB2;

LAB51:    goto LAB50;

LAB53:    goto LAB51;

}


extern void work_a_0399200291_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0399200291_2372691052_p_0};
	xsi_register_didat("work_a_0399200291_2372691052", "isim/nbit_incrementer_tb_isim_beh.exe.sim/work/a_0399200291_2372691052.didat");
	xsi_register_executes(pe);
}
