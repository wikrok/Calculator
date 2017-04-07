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
static const char *ng0 = "C:/Users/phil/Documents/GitHub/Calculator/Stack.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2917455975_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    unsigned char t16;
    int t17;
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    int t22;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 3712);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(40U);
    memset(t1, 0, 40U);
    t3 = t1;
    t8 = (8U * 1U);
    t4 = t3;
    memset(t4, (unsigned char)2, t8);
    t2 = (t8 != 0);
    if (t2 == 1)
        goto LAB5;

LAB6:    t5 = (t0 + 3776);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 40U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    t9 = (40U / t8);
    xsi_mem_set_data(t3, t3, t8, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    if (t14 == 1)
        goto LAB12;

LAB13:    t12 = (unsigned char)0;

LAB14:    if (t12 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t12 = *((unsigned char *)t3);
    t13 = (t12 == (unsigned char)3);
    if (t13 == 1)
        goto LAB20;

LAB21:    t2 = (unsigned char)0;

LAB22:    if (t2 != 0)
        goto LAB18;

LAB19:
LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1032U);
    t6 = *((char **)t3);
    t3 = (t0 + 2152U);
    t7 = *((char **)t3);
    t17 = *((int *)t7);
    t18 = (t17 - 0);
    t8 = (t18 * 1);
    t9 = (8U * t8);
    t19 = (0U + t9);
    t3 = (t0 + 3776);
    t10 = (t3 + 56U);
    t11 = *((char **)t10);
    t20 = (t11 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_delta(t3, t19, 8U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t17 = (t15 + 1);
    t2 = (t17 == 4);
    if (t2 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t17 = (t15 + 1);
    t1 = (t0 + 3712);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t17;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB12:    t3 = (t0 + 2152U);
    t5 = *((char **)t3);
    t15 = *((int *)t5);
    t16 = (t15 < 4);
    t12 = t16;
    goto LAB14;

LAB15:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3840);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t1 = (t0 + 2152U);
    t6 = *((char **)t1);
    t17 = *((int *)t6);
    t18 = (t17 - 1);
    t22 = (t18 - 0);
    t8 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 4, 1, t18);
    t9 = (8U * t8);
    t19 = (0 + t9);
    t1 = (t5 + t19);
    t7 = (t0 + 3904);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t20 = (t11 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t17 = (t15 - 1);
    t1 = (t0 + 3712);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t17;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t15 = *((int *)t3);
    t2 = (t15 < 4);
    if (t2 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB10;

LAB20:    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t15 = *((int *)t4);
    t14 = (t15 > 0);
    t2 = t14;
    goto LAB22;

LAB23:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3840);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB24;

}


extern void work_a_2917455975_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2917455975_3212880686_p_0};
	xsi_register_didat("work_a_2917455975_3212880686", "isim/StackTest_isim_beh.exe.sim/work/a_2917455975_3212880686.didat");
	xsi_register_executes(pe);
}
