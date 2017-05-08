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
static const char *ng0 = "C:/Users/seb/Documents/GitHub/Calculator/TestTopLevelOriginal.vhd";



static void work_a_1278771149_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3880);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3880);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1278771149_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;

LAB0:    t1 = (t0 + 4320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 4128);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 4128);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 8096);
    t6 = (t0 + 4832);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t3 = (600 * 1000LL);
    t2 = (t0 + 4128);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);

LAB18:    t2 = (t0 + 4640);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t4 = (t0 + 4640);
    *((int *)t4) = 0;
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 8104);
    t6 = (t0 + 4832);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t3 = (600 * 1000LL);
    t2 = (t0 + 4128);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    t4 = (t0 + 2632U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);

LAB26:    t2 = (t0 + 4656);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    t4 = (t0 + 4656);
    *((int *)t4) = 0;
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 8112);
    t6 = (t0 + 4832);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(141, ng0);
    t3 = (600 * 1000LL);
    t2 = (t0 + 4128);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    t4 = (t0 + 2632U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB24;
    else
        goto LAB26;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(143, ng0);

LAB34:    t2 = (t0 + 4672);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t4 = (t0 + 4672);
    *((int *)t4) = 0;
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 8120);
    t6 = (t0 + 4832);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(147, ng0);
    t3 = (600 * 1000LL);
    t2 = (t0 + 4128);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    t4 = (t0 + 2632U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB32;
    else
        goto LAB34;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 4896);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(149, ng0);

LAB42:    t2 = (t0 + 4688);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    t4 = (t0 + 4688);
    *((int *)t4) = 0;
    xsi_set_current_line(151, ng0);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    t4 = (t0 + 2632U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB40;
    else
        goto LAB42;

LAB43:    goto LAB41;

LAB44:    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}


extern void work_a_1278771149_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1278771149_2372691052_p_0,(void *)work_a_1278771149_2372691052_p_1};
	xsi_register_didat("work_a_1278771149_2372691052", "isim/TestTopLevelOriginal_isim_beh.exe.sim/work/a_1278771149_2372691052.didat");
	xsi_register_executes(pe);
}
