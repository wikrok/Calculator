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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
<<<<<<< HEAD:isim/TestDesignTop_isim_beh.exe.sim/work/a_3199211498_3212880686.c
static const char *ng0 = "C:/Users/PC157/Desktop/Phil Seb VHDL/Calculator-Not-Integers/UART-tx-buffer.vhd";
=======
static const char *ng0 = "C:/Users/seb/Documents/GitHub/Calculator/UART-tx-buffer.vhd";
>>>>>>> origin/Not-Integers:isim/testbench_isim_beh.exe.sim/work/a_3199211498_3212880686.c
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3199211498_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 936U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2420);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(512U);
    memset(t1, 0, 512U);
    t5 = t1;
    t6 = (8U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 2472);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 512U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2508);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t7 = (t5 + 40U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    t9 = (512U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t2 = (t0 + 1236U);
    t7 = *((char **)t2);
    t15 = *((int *)t7);
    t16 = (t15 - 0);
    t6 = (t16 * 1);
    t9 = (8U * t6);
    t17 = (0U + t9);
    t2 = (t0 + 2472);
    t10 = (t2 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_delta(t2, t17, 8U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t3 = (t15 == 63);
    if (t3 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t16 = (t15 + 1);
    t1 = (t0 + 2508);
    t5 = (t1 + 32U);
    t7 = *((char **)t5);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((int *)t11) = t16;
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2508);
    t5 = (t1 + 32U);
    t7 = *((char **)t5);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

}

static void work_a_3199211498_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    int t11;
    int t12;
    unsigned char t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int64 t23;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t10 = (t4 == (unsigned char)3);
    if (t10 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2428);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2544);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(71, ng0);
<<<<<<< HEAD:isim/TestDesignTop_isim_beh.exe.sim/work/a_3199211498_3212880686.c
    t1 = (t0 + 5525);
    t5 = (t0 + 2580);
    t6 = (t5 + 32U);
=======
    t1 = (t0 + 7801);
    t5 = (t0 + 4488);
    t6 = (t5 + 56U);
>>>>>>> origin/Not-Integers:isim/testbench_isim_beh.exe.sim/work/a_3199211498_3212880686.c
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1144U);
    t7 = *((char **)t1);
    t1 = (t0 + 1328U);
    t8 = *((char **)t1);
    t14 = *((int *)t8);
    t15 = (t14 - 0);
    t16 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t14);
    t17 = (8U * t16);
    t18 = (0 + t17);
    t1 = (t7 + t18);
    t9 = (t0 + 2580);
    t19 = (t9 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2616);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t23 = (20 * 1000LL);
    t8 = (t0 + 2616);
    t9 = (t8 + 32U);
    t19 = *((char **)t9);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t23);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 == 63);
    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 + 1);
    t1 = (t0 + 2544);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((int *)t8) = t12;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB3;

LAB7:    t1 = (t0 + 1236U);
    t5 = *((char **)t1);
    t11 = *((int *)t5);
    t1 = (t0 + 1328U);
    t6 = *((char **)t1);
    t12 = *((int *)t6);
    t13 = (t11 != t12);
    t3 = t13;
    goto LAB9;

LAB10:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2544);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

}


extern void work_a_3199211498_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3199211498_3212880686_p_0,(void *)work_a_3199211498_3212880686_p_1};
	xsi_register_didat("work_a_3199211498_3212880686", "isim/TestDesignTop_isim_beh.exe.sim/work/a_3199211498_3212880686.didat");
	xsi_register_executes(pe);
}
