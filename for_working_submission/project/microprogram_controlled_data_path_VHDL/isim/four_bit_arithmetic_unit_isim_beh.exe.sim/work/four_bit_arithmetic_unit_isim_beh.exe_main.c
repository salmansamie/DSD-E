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

char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3801681515_0992445763_init();
    work_a_3006959317_1787037181_init();
    work_a_2973221874_1787037181_init();
    work_a_4042774200_1577782760_init();
    work_a_2483091423_3212880686_init();
    work_a_2951549607_1985190287_init();
    work_a_0067706483_3212880686_init();
    work_a_4179008108_3212880686_init();
    work_a_2735068677_0351770935_init();
    work_a_3112044328_0401934996_init();
    work_a_3724978021_3212880686_init();
    work_a_2670441608_3212880686_init();
    work_a_0427022112_3212880686_init();
    work_a_1501168372_3212880686_init();


    xsi_register_tops("work_a_1501168372_3212880686");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
