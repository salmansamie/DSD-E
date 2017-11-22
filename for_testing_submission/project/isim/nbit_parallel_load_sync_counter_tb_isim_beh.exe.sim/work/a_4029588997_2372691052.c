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
static const char *ng0 = "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/test/lab4/nbit_parallel_load_sync_counter_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_4029588997_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (50 * 1000LL);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3640);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 3640);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 3560);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4029588997_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 3240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3704);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t3 = (200 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 3704);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6608);
    t8 = 1;
    if (8U == 8U)
        goto LAB18;

LAB19:    t8 = 0;

LAB20:    if (t8 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(85, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t10 = (t0 + 6616);
    xsi_report(t10, 35U, 2);
    goto LAB17;

LAB18:    t9 = 0;

LAB21:    if (t9 < 8U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t6 = (t4 + t9);
    t7 = (t2 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB19;

LAB23:    t9 = (t9 + 1);
    goto LAB21;

LAB24:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6651);
    t8 = 1;
    if (8U == 8U)
        goto LAB30;

LAB31:    t8 = 0;

LAB32:    if (t8 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 6694);
    t5 = (t0 + 3832);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3896);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t10 = (t0 + 6659);
    xsi_report(t10, 35U, 2);
    goto LAB29;

LAB30:    t9 = 0;

LAB33:    if (t9 < 8U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t6 = (t4 + t9);
    t7 = (t2 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB31;

LAB35:    t9 = (t9 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6702);
    t8 = 1;
    if (8U == 8U)
        goto LAB42;

LAB43:    t8 = 0;

LAB44:    if (t8 == 0)
        goto LAB40;

LAB41:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3896);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(102, ng0);
    t3 = (300 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    t10 = (t0 + 6710);
    xsi_report(t10, 35U, 2);
    goto LAB41;

LAB42:    t9 = 0;

LAB45:    if (t9 < 8U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t6 = (t4 + t9);
    t7 = (t2 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB43;

LAB47:    t9 = (t9 + 1);
    goto LAB45;

LAB48:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6745);
    t8 = 1;
    if (8U == 8U)
        goto LAB54;

LAB55:    t8 = 0;

LAB56:    if (t8 == 0)
        goto LAB52;

LAB53:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t3 = (200 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    t10 = (t0 + 6753);
    xsi_report(t10, 35U, 2);
    goto LAB53;

LAB54:    t9 = 0;

LAB57:    if (t9 < 8U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t6 = (t4 + t9);
    t7 = (t2 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB55;

LAB59:    t9 = (t9 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6788);
    t8 = 1;
    if (8U == 8U)
        goto LAB66;

LAB67:    t8 = 0;

LAB68:    if (t8 == 0)
        goto LAB64;

LAB65:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 3704);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(116, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3048);
    xsi_process_wait(t2, t3);

LAB74:    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    t10 = (t0 + 6796);
    xsi_report(t10, 35U, 2);
    goto LAB65;

LAB66:    t9 = 0;

LAB69:    if (t9 < 8U)
        goto LAB70;
    else
        goto LAB68;

LAB70:    t6 = (t4 + t9);
    t7 = (t2 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB67;

LAB71:    t9 = (t9 + 1);
    goto LAB69;

LAB72:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6831);
    t8 = 1;
    if (8U == 8U)
        goto LAB78;

LAB79:    t8 = 0;

LAB80:    if (t8 == 0)
        goto LAB76;

LAB77:    xsi_set_current_line(121, ng0);

LAB86:    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB73:    goto LAB72;

LAB75:    goto LAB73;

LAB76:    t10 = (t0 + 6839);
    xsi_report(t10, 35U, 2);
    goto LAB77;

LAB78:    t9 = 0;

LAB81:    if (t9 < 8U)
        goto LAB82;
    else
        goto LAB80;

LAB82:    t6 = (t4 + t9);
    t7 = (t2 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB79;

LAB83:    t9 = (t9 + 1);
    goto LAB81;

LAB84:    goto LAB2;

LAB85:    goto LAB84;

LAB87:    goto LAB85;

}


extern void work_a_4029588997_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4029588997_2372691052_p_0,(void *)work_a_4029588997_2372691052_p_1};
	xsi_register_didat("work_a_4029588997_2372691052", "isim/nbit_parallel_load_sync_counter_tb_isim_beh.exe.sim/work/a_4029588997_2372691052.didat");
	xsi_register_executes(pe);
}
