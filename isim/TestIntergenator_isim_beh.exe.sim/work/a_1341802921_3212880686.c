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
static const char *ng0 = "C:/Users/phil/Documents/GitHub/Calculator/Intergenator.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );


static void work_a_1341802921_3212880686_p_0(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;
    char *t21;
    int t22;
    int t23;
    int t24;
    int t25;
    int64 t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    int t32;
    int t33;

LAB0:    t1 = (t0 + 4432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);

LAB6:    t2 = (t0 + 4752);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t5 = (t0 + 4752);
    *((int *)t5) = 0;
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB16:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB17;

LAB18:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t3 = *((unsigned char *)t5);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB20:
LAB15:    goto LAB2;

LAB5:    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t5 = (t0 + 1512U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t4 = t11;

LAB13:    if (t4 == 1)
        goto LAB8;

LAB9:    t5 = (t0 + 1192U);
    t12 = *((char **)t5);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t3 = t14;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t3 = (unsigned char)1;
    goto LAB10;

LAB11:    t4 = (unsigned char)1;
    goto LAB13;

LAB14:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4832);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t15 = *((char **)t12);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4896);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4960);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5024);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 5088);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB15;

LAB17:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t2 = (t0 + 8004U);
    t9 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t16, t6, t2, 48);
    t12 = (t0 + 5152);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t9, 8U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4832);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 5216);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t20 = (20 * 1000LL);
    t15 = (t0 + 5216);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t15, 0U, 1, t20);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5088);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB15;

LAB19:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2792U);
    t6 = *((char **)t2);
    t22 = *((int *)t6);
    t2 = (t0 + 5024);
    t9 = (t2 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    *((int *)t17) = t22;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4832);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(108, ng0);
    t20 = (10 * 1000LL);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t20);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB21:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3272U);
    t5 = *((char **)t2);
    t22 = *((int *)t5);
    t23 = (t22 - 1);
    t2 = (t0 + 8108);
    *((int *)t2) = 0;
    t6 = (t0 + 8112);
    *((int *)t6) = t23;
    t24 = 0;
    t25 = t23;

LAB25:    if (t24 <= t25)
        goto LAB26;

LAB28:    xsi_set_current_line(114, ng0);
    t20 = (10 * 1000LL);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t20);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

LAB26:    xsi_set_current_line(110, ng0);
    t20 = (20 * 1000LL);
    t9 = (t0 + 5216);
    t12 = (t9 + 56U);
    t15 = *((char **)t12);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_delta(t9, 0U, 1, t20);
    t26 = (40 * 1000LL);
    t19 = (t0 + 5216);
    t21 = (t19 + 56U);
    t27 = *((char **)t21);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t19, 0U, 1, t26);
    t30 = (t0 + 5216);
    xsi_driver_intertial_reject(t30, t20, t20);
    xsi_set_current_line(111, ng0);
    t20 = (40 * 1000LL);
    t2 = (t0 + 4240);
    xsi_process_wait(t2, t20);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB27:    t2 = (t0 + 8108);
    t24 = *((int *)t2);
    t5 = (t0 + 8112);
    t25 = *((int *)t5);
    if (t24 == t25)
        goto LAB28;

LAB33:    t22 = (t24 + 1);
    t24 = t22;
    t6 = (t0 + 8108);
    *((int *)t6) = t24;
    goto LAB25;

LAB29:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2952U);
    t5 = *((char **)t2);
    t22 = *((int *)t5);
    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t2 = (t0 + 8036U);
    t23 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t2);
    t9 = (t0 + 8108);
    t31 = xsi_vhdl_pow(10, *((int *)t9));
    t32 = (t23 * t31);
    t33 = (t22 + t32);
    t12 = (t0 + 5088);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((int *)t19) = t33;
    xsi_driver_first_trans_fast(t12);
    goto LAB27;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

LAB34:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2952U);
    t5 = *((char **)t2);
    t22 = *((int *)t5);
    t2 = (t0 + 5280);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t15 = *((char **)t12);
    *((int *)t15) = t22;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4960);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB15;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

}


extern void work_a_1341802921_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1341802921_3212880686_p_0};
	xsi_register_didat("work_a_1341802921_3212880686", "isim/TestIntergenator_isim_beh.exe.sim/work/a_1341802921_3212880686.didat");
	xsi_register_executes(pe);
}
