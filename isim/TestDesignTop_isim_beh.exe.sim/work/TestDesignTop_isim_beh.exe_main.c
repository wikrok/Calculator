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
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_1226042183_3212880686_init();
    work_a_3901407907_3212880686_init();
    work_a_1333371365_3212880686_init();
    work_a_0431616655_3212880686_init();
    work_a_3773605191_3212880686_init();
    work_a_0824815182_3212880686_init();
    work_a_2917455975_3212880686_init();
    work_a_2941744376_3212880686_init();
    work_a_0221845192_3212880686_init();
    work_a_0700950744_3212880686_init();
    work_a_3199211498_3212880686_init();
    work_a_0429186426_1181938964_init();
    work_a_1870560130_2372691052_init();


    xsi_register_tops("work_a_1870560130_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
