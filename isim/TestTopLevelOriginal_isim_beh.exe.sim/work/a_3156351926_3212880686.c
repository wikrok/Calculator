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
static const char *ng0 = "C:/Users/seb/Documents/GitHub/Calculator/character-decoder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3156351926_3212880686_p_0(char *t0)
{
    char t22[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5736);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 5864);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(38, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 5928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 5992);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t9 = (t2 == (unsigned char)3);
    if (t9 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 9985);
    t6 = ((IEEE_P_2592010699) + 4024);
    t11 = xsi_vhdl_greaterEqual(t6, t4, 8U, t1, 8U);
    if (t11 == 1)
        goto LAB11;

LAB12:    t10 = (unsigned char)0;

LAB13:    if (t10 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 10001);
    t5 = ((IEEE_P_2592010699) + 4024);
    t9 = xsi_vhdl_greaterEqual(t5, t3, 8U, t1, 8U);
    if (t9 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 10017);
    t5 = ((IEEE_P_2592010699) + 4024);
    t9 = xsi_vhdl_greaterEqual(t5, t3, 8U, t1, 8U);
    if (t9 == 1)
        goto LAB21;

LAB22:    t2 = (unsigned char)0;

LAB23:    if (t2 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 6056);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 6120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 5928);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB9:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5992);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5864);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(42, ng0);
    t15 = (t0 + 6056);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 6120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 9860U);
    t20 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t4 = (t0 + 3208U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t20;
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 3208U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t21 = (t20 - 32);
    t1 = (t0 + 3328U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t21;
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3328U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t22, t20, 8);
    t4 = (t0 + 5928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB9;

LAB11:    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t7 = (t0 + 9993);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = xsi_vhdl_lessthanEqual(t13, t8, 8U, t7, 8U);
    t10 = t14;
    goto LAB13;

LAB14:    xsi_set_current_line(48, ng0);
    t13 = (t0 + 6056);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 6120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 9860U);
    t20 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t4 = (t0 + 3208U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t20;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3208U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t21 = (t20 + 32);
    t1 = (t0 + 3328U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t21;
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3328U);
    t3 = *((char **)t1);
    t20 = *((int *)t3);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t22, t20, 8);
    t4 = (t0 + 5928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB9;

LAB16:    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t6 = (t0 + 10009);
    t12 = ((IEEE_P_2592010699) + 4024);
    t10 = xsi_vhdl_lessthanEqual(t12, t7, 8U, t6, 8U);
    t2 = t10;
    goto LAB18;

LAB19:    xsi_set_current_line(54, ng0);
    t13 = (t0 + 6056);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 6120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 5928);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB21:    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t6 = (t0 + 10025);
    t12 = ((IEEE_P_2592010699) + 4024);
    t10 = xsi_vhdl_lessthanEqual(t12, t7, 8U, t6, 8U);
    t2 = t10;
    goto LAB23;

}

static void work_a_3156351926_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6184);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5752);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3156351926_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5768);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 3568U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t1 = (t0 + 3448U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t2 = (t8 == t9);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6248);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 3568U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = 0;
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB6;

LAB8:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3568U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 + 1);
    t1 = (t0 + 3568U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t9;
    goto LAB9;

LAB11:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3688U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB12;

}

static void work_a_3156351926_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;

LAB0:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5784);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(96, ng0);
    t3 = (t0 + 6312);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t8 = *((unsigned char *)t4);
    t1 = (t0 + 6312);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = t8;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 6376);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

}


extern void work_a_3156351926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3156351926_3212880686_p_0,(void *)work_a_3156351926_3212880686_p_1,(void *)work_a_3156351926_3212880686_p_2,(void *)work_a_3156351926_3212880686_p_3};
	xsi_register_didat("work_a_3156351926_3212880686", "isim/TestTopLevelOriginal_isim_beh.exe.sim/work/a_3156351926_3212880686.didat");
	xsi_register_executes(pe);
}
