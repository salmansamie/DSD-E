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
static const char *ng0 = "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/project/microprogram_cdp_test_VHDL/four_bit_LAC.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_4179008108_3212880686_p_0(char *t0)
{
    char t2[16];
    int64 t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (7 * 1000LL);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 7848U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 7864U);
    t7 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t2, t4, t3, t6, t5);
    t8 = (t2 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (4U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4712);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_delta(t12, 0U, 4U, t1);
    t17 = (t0 + 4712);
    xsi_driver_intertial_reject(t17, t1, t1);

LAB2:    t18 = (t0 + 4552);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t10, 0);
    goto LAB6;

}

static void work_a_4179008108_3212880686_p_1(char *t0)
{
    char t2[16];
    int64 t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (7 * 1000LL);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 7848U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 7864U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t2, t4, t3, t6, t5);
    t8 = (t2 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (4U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4776);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_delta(t12, 0U, 4U, t1);
    t17 = (t0 + 4776);
    xsi_driver_intertial_reject(t17, t1, t1);

LAB2:    t18 = (t0 + 4568);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t10, 0);
    goto LAB6;

}

static void work_a_4179008108_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4840);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);

LAB2:    t8 = (t0 + 4584);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4179008108_3212880686_p_3(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (14 * 1000LL);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = (0 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t11 = (0 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t15, t18);
    t20 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t8, t19);
    t16 = (t0 + 4904);
    t21 = (t16 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = t20;
    xsi_driver_first_trans_delta(t16, 2U, 1, t1);
    t25 = (t0 + 4904);
    xsi_driver_intertial_reject(t25, t1, t1);

LAB2:    t26 = (t0 + 4600);
    *((int *)t26) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4179008108_3212880686_p_4(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t41;
    unsigned char t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (14 * 1000LL);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = (1 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t11 = (1 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = (t0 + 1672U);
    t17 = *((char **)t16);
    t18 = (0 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t15, t22);
    t24 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t8, t23);
    t25 = (t0 + 1832U);
    t26 = *((char **)t25);
    t27 = (1 - 3);
    t28 = (t27 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t25 = (t26 + t30);
    t31 = *((unsigned char *)t25);
    t32 = (t0 + 1832U);
    t33 = *((char **)t32);
    t34 = (0 - 3);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t31, t38);
    t40 = (t0 + 1352U);
    t41 = *((char **)t40);
    t42 = *((unsigned char *)t41);
    t43 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t39, t42);
    t44 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t24, t43);
    t40 = (t0 + 4968);
    t45 = (t40 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    *((unsigned char *)t48) = t44;
    xsi_driver_first_trans_delta(t40, 1U, 1, t1);
    t49 = (t0 + 4968);
    xsi_driver_intertial_reject(t49, t1, t1);

LAB2:    t50 = (t0 + 4616);
    *((int *)t50) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4179008108_3212880686_p_5(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned char t46;
    unsigned char t47;
    unsigned char t48;
    char *t49;
    char *t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned char t55;
    char *t56;
    char *t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    unsigned char t63;
    char *t64;
    char *t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned char t70;
    unsigned char t71;
    char *t72;
    char *t73;
    unsigned char t74;
    unsigned char t75;
    unsigned char t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = (14 * 1000LL);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = (2 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t11 = (2 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = (t0 + 1672U);
    t17 = *((char **)t16);
    t18 = (1 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t15, t22);
    t24 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t8, t23);
    t25 = (t0 + 1832U);
    t26 = *((char **)t25);
    t27 = (2 - 3);
    t28 = (t27 * -1);
    t29 = (1U * t28);
    t30 = (0 + t29);
    t25 = (t26 + t30);
    t31 = *((unsigned char *)t25);
    t32 = (t0 + 1832U);
    t33 = *((char **)t32);
    t34 = (1 - 3);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t31, t38);
    t40 = (t0 + 1672U);
    t41 = *((char **)t40);
    t42 = (0 - 3);
    t43 = (t42 * -1);
    t44 = (1U * t43);
    t45 = (0 + t44);
    t40 = (t41 + t45);
    t46 = *((unsigned char *)t40);
    t47 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t39, t46);
    t48 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t24, t47);
    t49 = (t0 + 1832U);
    t50 = *((char **)t49);
    t51 = (2 - 3);
    t52 = (t51 * -1);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t49 = (t50 + t54);
    t55 = *((unsigned char *)t49);
    t56 = (t0 + 1832U);
    t57 = *((char **)t56);
    t58 = (1 - 3);
    t59 = (t58 * -1);
    t60 = (1U * t59);
    t61 = (0 + t60);
    t56 = (t57 + t61);
    t62 = *((unsigned char *)t56);
    t63 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t55, t62);
    t64 = (t0 + 1832U);
    t65 = *((char **)t64);
    t66 = (0 - 3);
    t67 = (t66 * -1);
    t68 = (1U * t67);
    t69 = (0 + t68);
    t64 = (t65 + t69);
    t70 = *((unsigned char *)t64);
    t71 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t63, t70);
    t72 = (t0 + 1352U);
    t73 = *((char **)t72);
    t74 = *((unsigned char *)t73);
    t75 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t71, t74);
    t76 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t48, t75);
    t72 = (t0 + 5032);
    t77 = (t72 + 56U);
    t78 = *((char **)t77);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    *((unsigned char *)t80) = t76;
    xsi_driver_first_trans_delta(t72, 0U, 1, t1);
    t81 = (t0 + 5032);
    xsi_driver_intertial_reject(t81, t1, t1);

LAB2:    t82 = (t0 + 4632);
    *((int *)t82) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4179008108_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4179008108_3212880686_p_0,(void *)work_a_4179008108_3212880686_p_1,(void *)work_a_4179008108_3212880686_p_2,(void *)work_a_4179008108_3212880686_p_3,(void *)work_a_4179008108_3212880686_p_4,(void *)work_a_4179008108_3212880686_p_5};
	xsi_register_didat("work_a_4179008108_3212880686", "isim/four_bit_updown_counter_tb_isim_beh.exe.sim/work/a_4179008108_3212880686.didat");
	xsi_register_executes(pe);
}
