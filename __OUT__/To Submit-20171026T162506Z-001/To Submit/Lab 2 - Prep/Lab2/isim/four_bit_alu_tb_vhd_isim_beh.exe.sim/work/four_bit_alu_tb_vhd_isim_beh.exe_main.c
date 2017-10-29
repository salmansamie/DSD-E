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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_STANDARD;
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_1818097408_3212880686_init();
    work_a_2483091423_3212880686_init();
    work_a_2281297721_3212880686_init();
    work_a_1167627079_3212880686_init();
    work_a_4179008108_3212880686_init();
    work_a_2735068677_3212880686_init();
    work_a_1183957525_3212880686_init();
    work_a_3112044328_1691708318_init();
    work_a_3724978021_3212880686_init();
    work_a_2670441608_3212880686_init();
    work_a_4088829756_3212880686_init();
    work_a_1171206432_3212880686_init();
    work_a_3801681515_3212880686_init();
    work_a_1650097586_3212880686_init();
    work_a_0733220419_3212880686_init();
    work_a_1620803328_3212880686_init();
    work_a_1710532550_3212880686_init();
    work_a_0413558560_3212880686_init();
    work_a_2400576659_2372691052_init();


    xsi_register_tops("work_a_2400576659_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
