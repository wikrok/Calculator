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
static const char *ng0 = "C:/Users/seb/Desktop/Calculator-Not-Integers/UART-tx-buffer.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1062778975_3212880686_p_0(char *t0)
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
    int t18;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1952U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 4448);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(512U);
    memset(t1, 0, 512U);
    t5 = t1;
    t6 = (8U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4560);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 512U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4624);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    t9 = (512U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t8 = (t4 == (unsigned char)3);
    if (t8 != 0)
        goto LAB9;

LAB11:
LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t2 = (t0 + 2312U);
    t10 = *((char **)t2);
    t15 = *((int *)t10);
    t16 = (t15 - 0);
    t6 = (t16 * 1);
    t9 = (8U * t6);
    t17 = (0U + t9);
    t2 = (t0 + 4560);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 8U);
    xsi_driver_first_trans_delta(t2, t17, 8U, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t16 = (t15 + 1);
    t18 = xsi_vhdl_mod(t16, 64);
    t1 = (t0 + 4624);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t18;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

}

static void work_a_1062778975_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t4);
    t7 = (8U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = (t0 + 4688);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 4464);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1062778975_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1952U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4752);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4816);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 + 1);
    t17 = xsi_vhdl_mod(t12, 64);
    t1 = (t0 + 4752);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t17;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4816);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4816);
    t8 = (t2 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB10:    t2 = (t0 + 2312U);
    t6 = *((char **)t2);
    t11 = *((int *)t6);
    t2 = (t0 + 2472U);
    t7 = *((char **)t2);
    t12 = *((int *)t7);
    t13 = (t11 != t12);
    t4 = t13;
    goto LAB12;

}


extern void work_a_1062778975_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1062778975_3212880686_p_0,(void *)work_a_1062778975_3212880686_p_1,(void *)work_a_1062778975_3212880686_p_2};
	xsi_register_didat("work_a_1062778975_3212880686", "isim/UART_tx_buffer_isim_beh.exe.sim/work/a_1062778975_3212880686.didat");
	xsi_register_executes(pe);
}
