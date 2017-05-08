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
static const char *ng0 = "C:/Users/seb/Documents/GitHub/Calculator/debouncer.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3152451958_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t3 = (t0 + 2088U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(25, ng0);
    t6 = (t0 + 4096);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 2088U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB5;

LAB7:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4160);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 2208U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t12 = (t5 != t11);
    if (t12 == 1)
        goto LAB13;

LAB14:    t2 = (unsigned char)0;

LAB15:    if (t2 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2208U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t2;
    goto LAB5;

LAB8:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 4160);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2208U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t11 = (t2 != t5);
    if (t11 != 0)
        goto LAB16;

LAB18:
LAB17:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB5;

LAB9:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 4096);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 4160);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2088U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB11;

LAB13:    t1 = (t0 + 2208U);
    t6 = *((char **)t1);
    t13 = *((unsigned char *)t6);
    t14 = (t13 != (unsigned char)0);
    t2 = t14;
    goto LAB15;

LAB16:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t12 = *((unsigned char *)t6);
    t1 = (t0 + 2208U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = t12;
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 4160);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t1 = (t0 + 4096);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t11;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 4160);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2088U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB20;

}

static void work_a_3152451958_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4016);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4224);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2448U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 0);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2448U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t11 = (t8 - 1);
    t1 = (t0 + 2448U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 2328U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t3 = (t0 + 2448U);
    t9 = *((char **)t3);
    t3 = (t9 + 0);
    *((int *)t3) = t8;
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4224);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4224);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

}


extern void work_a_3152451958_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3152451958_3212880686_p_0,(void *)work_a_3152451958_3212880686_p_1};
	xsi_register_didat("work_a_3152451958_3212880686", "isim/TestTopLevelOriginal_isim_beh.exe.sim/work/a_3152451958_3212880686.didat");
	xsi_register_executes(pe);
}
