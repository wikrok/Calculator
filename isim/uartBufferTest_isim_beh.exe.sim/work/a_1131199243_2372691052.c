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
extern char *IEEE_P_1242562249;
static const char *ng1 = "C:/Users/phil/Documents/GitHub/Calculator/uartBufferTest.vhd";
extern char *STD_STANDARD;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


void work_a_1131199243_2372691052_sub_2143137184_4046309516(char *t0, char *t1, char *t2, char *t3)
{
    char t5[24];
    char t13[16];
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned int t10;
    int t11;
    int t12;
    char *t14;
    int t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    int64 t35;

LAB0:    t6 = (t5 + 4U);
    t7 = (t2 != 0);
    if (t7 == 1)
        goto LAB3;

LAB2:    t8 = (t5 + 12U);
    *((char **)t8) = t3;
    t9 = (t3 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = 1;
    t12 = t10;

LAB4:    if (t11 <= t12)
        goto LAB5;

LAB7:
LAB1:    return;
LAB3:    *((char **)t6) = t2;
    goto LAB2;

LAB5:    t14 = (t3 + 0U);
    t15 = *((int *)t14);
    t16 = (t3 + 8U);
    t17 = *((int *)t16);
    t18 = (t11 - t15);
    t19 = (t18 * t17);
    t20 = (t3 + 4U);
    t21 = *((int *)t20);
    xsi_vhdl_check_range_of_index(t15, t21, t17, t11);
    t22 = (1U * t19);
    t23 = (0 + t22);
    t24 = (t2 + t23);
    t25 = *((unsigned char *)t24);
    t26 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t13, ((int)(t25)), 8);
    t27 = (t0 + 3912);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t0 + 6480U);
    t33 = (t32 + 12U);
    t34 = *((unsigned int *)t33);
    t34 = (t34 * 1U);
    memcpy(t31, t26, t34);
    xsi_driver_first_trans_fast(t27);
    t9 = (t0 + 3976);
    t14 = (t9 + 56U);
    t16 = *((char **)t14);
    t20 = (t16 + 56U);
    t24 = *((char **)t20);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_first_trans_delta(t9, 0U, 1, 0LL);
    t35 = (20 * 1000LL);
    t26 = (t0 + 3976);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t26, 0U, 1, t35);
    t35 = (40 * 1000LL);
    xsi_process_wait(t1, t35);

LAB11:    t9 = (t1 + 88U);
    t14 = *((char **)t9);
    t16 = (t14 + 2480U);
    *((unsigned int *)t16) = 1U;
    t20 = (t1 + 88U);
    t24 = *((char **)t20);
    t26 = (t24 + 0U);
    getcontext(t26);
    t27 = (t1 + 88U);
    t28 = *((char **)t27);
    t29 = (t28 + 2480U);
    t10 = *((unsigned int *)t29);
    if (t10 == 1)
        goto LAB12;

LAB13:    t30 = (t1 + 88U);
    t31 = *((char **)t30);
    t32 = (t31 + 2480U);
    *((unsigned int *)t32) = 3U;

LAB9:
LAB10:
LAB8:
LAB6:    if (t11 == t12)
        goto LAB7;

LAB14:    t15 = (t11 + 1);
    t11 = t15;
    goto LAB4;

LAB12:    xsi_saveStackAndSuspend(t1);
    goto LAB13;

}

static void work_a_1131199243_2372691052_p_0(char *t0)
{
    char t3[16];
    char t12[8];
    char t15[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int64 t11;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng1);
    t2 = ((STD_STANDARD) + 384);
    t4 = xsi_int_to_mem(5536);
    t5 = xsi_string_variable_get_image(t3, t2, t4);
    t6 = (t0 + 3848);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(99, ng1);
    t11 = (40 * 1000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t11);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(100, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    memcpy(t12, t5, 4U);
    t4 = (t0 + 6528U);
    work_a_1131199243_2372691052_sub_2143137184_4046309516(t0, t2, t12, t4);
    xsi_set_current_line(102, ng1);
    t11 = (400 * 1000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t11);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(104, ng1);
    t2 = (t0 + 4040);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t11 = (20 * 1000LL);
    t8 = (t0 + 4040);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t11);
    xsi_set_current_line(106, ng1);
    t11 = (40 * 1000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t11);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(108, ng1);
    t2 = (t0 + 6600);
    t5 = (t0 + 4104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 12U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(109, ng1);
    t11 = (40 * 1000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t11);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(110, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    memcpy(t15, t5, 12U);
    t4 = (t0 + 6512U);
    work_a_1131199243_2372691052_sub_2143137184_4046309516(t0, t2, t15, t4);
    xsi_set_current_line(112, ng1);
    t11 = (400 * 1000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t11);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(114, ng1);
    t2 = (t0 + 4168);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t11 = (20 * 1000LL);
    t8 = (t0 + 4168);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t11);
    xsi_set_current_line(116, ng1);
    t11 = (200 * 1000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t11);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    goto LAB2;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

}


extern void work_a_1131199243_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1131199243_2372691052_p_0};
	static char *se[] = {(void *)work_a_1131199243_2372691052_sub_2143137184_4046309516};
	xsi_register_didat("work_a_1131199243_2372691052", "isim/uartBufferTest_isim_beh.exe.sim/work/a_1131199243_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
