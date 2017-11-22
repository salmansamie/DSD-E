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
static const char *ng0 = "C:/Users/neoke/Desktop/DSD-E/for_testing_submission/test/lab4/washer_output_logic_tb.vhd";



static void work_a_2566696276_3671711236_p_0(char *t0)
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
    unsigned char t11;

LAB0:    t1 = (t0 + 2992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 5976);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(42, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB14;

LAB15:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB18;

LAB19:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 6009);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(54, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t2 = (t0 + 5979);
    xsi_report(t2, 6U, 2);
    goto LAB13;

LAB14:    t2 = (t0 + 5985);
    xsi_report(t2, 6U, 2);
    goto LAB15;

LAB16:    t2 = (t0 + 5991);
    xsi_report(t2, 6U, 2);
    goto LAB17;

LAB18:    t2 = (t0 + 5997);
    xsi_report(t2, 6U, 2);
    goto LAB19;

LAB20:    t2 = (t0 + 6003);
    xsi_report(t2, 6U, 2);
    goto LAB21;

LAB22:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB26;

LAB27:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB30;

LAB31:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB34;

LAB35:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 6042);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(65, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB26:    t2 = (t0 + 6012);
    xsi_report(t2, 6U, 2);
    goto LAB27;

LAB28:    t2 = (t0 + 6018);
    xsi_report(t2, 6U, 2);
    goto LAB29;

LAB30:    t2 = (t0 + 6024);
    xsi_report(t2, 6U, 2);
    goto LAB31;

LAB32:    t2 = (t0 + 6030);
    xsi_report(t2, 6U, 2);
    goto LAB33;

LAB34:    t2 = (t0 + 6036);
    xsi_report(t2, 6U, 2);
    goto LAB35;

LAB36:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB40;

LAB41:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB42;

LAB43:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB46;

LAB47:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB48;

LAB49:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 6075);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(76, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB52:    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    t2 = (t0 + 6045);
    xsi_report(t2, 6U, 2);
    goto LAB41;

LAB42:    t2 = (t0 + 6051);
    xsi_report(t2, 6U, 2);
    goto LAB43;

LAB44:    t2 = (t0 + 6057);
    xsi_report(t2, 6U, 2);
    goto LAB45;

LAB46:    t2 = (t0 + 6063);
    xsi_report(t2, 6U, 2);
    goto LAB47;

LAB48:    t2 = (t0 + 6069);
    xsi_report(t2, 6U, 2);
    goto LAB49;

LAB50:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB54;

LAB55:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB56;

LAB57:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB58;

LAB59:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB60;

LAB61:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB62;

LAB63:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 6108);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(86, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB51:    goto LAB50;

LAB53:    goto LAB51;

LAB54:    t2 = (t0 + 6078);
    xsi_report(t2, 6U, 2);
    goto LAB55;

LAB56:    t2 = (t0 + 6084);
    xsi_report(t2, 6U, 2);
    goto LAB57;

LAB58:    t2 = (t0 + 6090);
    xsi_report(t2, 6U, 2);
    goto LAB59;

LAB60:    t2 = (t0 + 6096);
    xsi_report(t2, 6U, 2);
    goto LAB61;

LAB62:    t2 = (t0 + 6102);
    xsi_report(t2, 6U, 2);
    goto LAB63;

LAB64:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB68;

LAB69:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB70;

LAB71:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB72;

LAB73:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB74;

LAB75:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB76;

LAB77:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 6141);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(97, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB80:    *((char **)t1) = &&LAB81;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t2 = (t0 + 6111);
    xsi_report(t2, 6U, 2);
    goto LAB69;

LAB70:    t2 = (t0 + 6117);
    xsi_report(t2, 6U, 2);
    goto LAB71;

LAB72:    t2 = (t0 + 6123);
    xsi_report(t2, 6U, 2);
    goto LAB73;

LAB74:    t2 = (t0 + 6129);
    xsi_report(t2, 6U, 2);
    goto LAB75;

LAB76:    t2 = (t0 + 6135);
    xsi_report(t2, 6U, 2);
    goto LAB77;

LAB78:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB82;

LAB83:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB84;

LAB85:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB86;

LAB87:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB88;

LAB89:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB90;

LAB91:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 6174);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(105, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB94:    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB79:    goto LAB78;

LAB81:    goto LAB79;

LAB82:    t2 = (t0 + 6144);
    xsi_report(t2, 6U, 2);
    goto LAB83;

LAB84:    t2 = (t0 + 6150);
    xsi_report(t2, 6U, 2);
    goto LAB85;

LAB86:    t2 = (t0 + 6156);
    xsi_report(t2, 6U, 2);
    goto LAB87;

LAB88:    t2 = (t0 + 6162);
    xsi_report(t2, 6U, 2);
    goto LAB89;

LAB90:    t2 = (t0 + 6168);
    xsi_report(t2, 6U, 2);
    goto LAB91;

LAB92:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB96;

LAB97:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB98;

LAB99:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB100;

LAB101:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB102;

LAB103:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB104;

LAB105:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 6207);
    t5 = (t0 + 3376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(114, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t3);

LAB108:    *((char **)t1) = &&LAB109;
    goto LAB1;

LAB93:    goto LAB92;

LAB95:    goto LAB93;

LAB96:    t2 = (t0 + 6177);
    xsi_report(t2, 6U, 2);
    goto LAB97;

LAB98:    t2 = (t0 + 6183);
    xsi_report(t2, 6U, 2);
    goto LAB99;

LAB100:    t2 = (t0 + 6189);
    xsi_report(t2, 6U, 2);
    goto LAB101;

LAB102:    t2 = (t0 + 6195);
    xsi_report(t2, 6U, 2);
    goto LAB103;

LAB104:    t2 = (t0 + 6201);
    xsi_report(t2, 6U, 2);
    goto LAB105;

LAB106:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB110;

LAB111:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB112;

LAB113:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)2);
    if (t11 == 0)
        goto LAB114;

LAB115:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB116;

LAB117:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t10 = *((unsigned char *)t4);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 0)
        goto LAB118;

LAB119:    xsi_set_current_line(122, ng0);

LAB122:    *((char **)t1) = &&LAB123;
    goto LAB1;

LAB107:    goto LAB106;

LAB109:    goto LAB107;

LAB110:    t2 = (t0 + 6210);
    xsi_report(t2, 6U, 2);
    goto LAB111;

LAB112:    t2 = (t0 + 6216);
    xsi_report(t2, 6U, 2);
    goto LAB113;

LAB114:    t2 = (t0 + 6222);
    xsi_report(t2, 6U, 2);
    goto LAB115;

LAB116:    t2 = (t0 + 6228);
    xsi_report(t2, 6U, 2);
    goto LAB117;

LAB118:    t2 = (t0 + 6234);
    xsi_report(t2, 6U, 2);
    goto LAB119;

LAB120:    goto LAB2;

LAB121:    goto LAB120;

LAB123:    goto LAB121;

}


extern void work_a_2566696276_3671711236_init()
{
	static char *pe[] = {(void *)work_a_2566696276_3671711236_p_0};
	xsi_register_didat("work_a_2566696276_3671711236", "isim/tb_washer_output_logic_isim_beh.exe.sim/work/a_2566696276_3671711236.didat");
	xsi_register_executes(pe);
}
