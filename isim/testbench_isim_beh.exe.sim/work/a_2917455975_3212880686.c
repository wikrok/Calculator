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
static const char *ng0 = "C:/Users/seb/Documents/GitHub/Calculator/Stack.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2917455975_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 4296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4200);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2917455975_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    unsigned char t19;
    int t20;
    int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2112U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 4216);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4360);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(72U);
    memset(t1, 0, 72U);
    t2 = t1;
    t9 = (8U * 1U);
    t5 = t2;
    memset(t5, (unsigned char)2, t9);
    t3 = (t9 != 0);
    if (t3 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 4424);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 72U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4488);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    t10 = (72U / t9);
    xsi_mem_set_data(t2, t2, t9, t10);
    goto LAB6;

LAB7:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB15;

LAB16:    t13 = (unsigned char)0;

LAB17:    if (t13 == 1)
        goto LAB12;

LAB13:    t4 = (unsigned char)0;

LAB14:    if (t4 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t13 = *((unsigned char *)t2);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB26;

LAB27:    t4 = (unsigned char)0;

LAB28:    if (t4 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB21;

LAB22:
LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1032U);
    t8 = *((char **)t2);
    t2 = (t0 + 2472U);
    t11 = *((char **)t2);
    t20 = *((int *)t11);
    t21 = (t20 - 0);
    t9 = (t21 * 1);
    t10 = (8U * t9);
    t22 = (0U + t10);
    t2 = (t0 + 4424);
    t12 = (t2 + 56U);
    t23 = *((char **)t12);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t8, 8U);
    xsi_driver_first_trans_delta(t2, t22, 8U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t20 = (t18 + 1);
    t3 = (t20 == 8);
    if (t3 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t20 = (t18 + 1);
    t1 = (t0 + 4360);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t20;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB12:    t2 = (t0 + 2472U);
    t7 = *((char **)t2);
    t18 = *((int *)t7);
    t19 = (t18 < 8);
    t4 = t19;
    goto LAB14;

LAB15:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t16 = *((unsigned char *)t6);
    t17 = (t16 == (unsigned char)2);
    t13 = t17;
    goto LAB17;

LAB18:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4488);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB19;

LAB21:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t1 = (t0 + 2472U);
    t8 = *((char **)t1);
    t20 = *((int *)t8);
    t21 = (t20 - 1);
    t26 = (t21 - 0);
    t9 = (t26 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, t21);
    t10 = (8U * t9);
    t22 = (0 + t10);
    t1 = (t7 + t22);
    t11 = (t0 + 4552);
    t12 = (t11 + 56U);
    t23 = *((char **)t12);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t1, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t20 = (t18 - 1);
    t1 = (t0 + 4360);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t20;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t3 = (t18 < 8);
    if (t3 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB10;

LAB23:    t1 = (t0 + 2472U);
    t6 = *((char **)t1);
    t18 = *((int *)t6);
    t17 = (t18 > 0);
    t3 = t17;
    goto LAB25;

LAB26:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)2);
    t4 = t16;
    goto LAB28;

LAB29:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4488);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB30;

}


extern void work_a_2917455975_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2917455975_3212880686_p_0,(void *)work_a_2917455975_3212880686_p_1};
	xsi_register_didat("work_a_2917455975_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_2917455975_3212880686.didat");
	xsi_register_executes(pe);
}
