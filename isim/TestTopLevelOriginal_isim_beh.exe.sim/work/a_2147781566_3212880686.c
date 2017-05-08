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
static const char *ng0 = "C:/Users/seb/Documents/GitHub/Calculator/character_encoder.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2147781566_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    int t45;
    char *t46;
    int t48;
    char *t49;
    int t51;
    char *t52;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4640);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t3 = (t0 + 4736);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 2608U);
    t4 = *((char **)t1);
    t2 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t2 = 0;

LAB10:    if ((!(t2)) != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 2608U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t3, 4U);
    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t6 = (t0 + 4736);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7834);
    t12 = xsi_mem_cmp(t1, t3, 4U);
    if (t12 == 1)
        goto LAB15;

LAB32:    t5 = (t0 + 7838);
    t13 = xsi_mem_cmp(t5, t3, 4U);
    if (t13 == 1)
        goto LAB16;

LAB33:    t7 = (t0 + 7842);
    t14 = xsi_mem_cmp(t7, t3, 4U);
    if (t14 == 1)
        goto LAB17;

LAB34:    t10 = (t0 + 7846);
    t15 = xsi_mem_cmp(t10, t3, 4U);
    if (t15 == 1)
        goto LAB18;

LAB35:    t16 = (t0 + 7850);
    t18 = xsi_mem_cmp(t16, t3, 4U);
    if (t18 == 1)
        goto LAB19;

LAB36:    t19 = (t0 + 7854);
    t21 = xsi_mem_cmp(t19, t3, 4U);
    if (t21 == 1)
        goto LAB20;

LAB37:    t22 = (t0 + 7858);
    t24 = xsi_mem_cmp(t22, t3, 4U);
    if (t24 == 1)
        goto LAB21;

LAB38:    t25 = (t0 + 7862);
    t27 = xsi_mem_cmp(t25, t3, 4U);
    if (t27 == 1)
        goto LAB22;

LAB39:    t28 = (t0 + 7866);
    t30 = xsi_mem_cmp(t28, t3, 4U);
    if (t30 == 1)
        goto LAB23;

LAB40:    t31 = (t0 + 7870);
    t33 = xsi_mem_cmp(t31, t3, 4U);
    if (t33 == 1)
        goto LAB24;

LAB41:    t34 = (t0 + 7874);
    t36 = xsi_mem_cmp(t34, t3, 4U);
    if (t36 == 1)
        goto LAB25;

LAB42:    t37 = (t0 + 7878);
    t39 = xsi_mem_cmp(t37, t3, 4U);
    if (t39 == 1)
        goto LAB26;

LAB43:    t40 = (t0 + 7882);
    t42 = xsi_mem_cmp(t40, t3, 4U);
    if (t42 == 1)
        goto LAB27;

LAB44:    t43 = (t0 + 7886);
    t45 = xsi_mem_cmp(t43, t3, 4U);
    if (t45 == 1)
        goto LAB28;

LAB45:    t46 = (t0 + 7890);
    t48 = xsi_mem_cmp(t46, t3, 4U);
    if (t48 == 1)
        goto LAB29;

LAB46:    t49 = (t0 + 7894);
    t51 = xsi_mem_cmp(t49, t3, 4U);
    if (t51 == 1)
        goto LAB30;

LAB47:
LAB31:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 8026);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);

LAB14:    goto LAB6;

LAB8:    t8 = 0;

LAB11:    if (t8 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t1 = (t3 + t8);
    t5 = (t4 + t8);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB9;

LAB13:    t8 = (t8 + 1);
    goto LAB11;

LAB15:    xsi_set_current_line(29, ng0);
    t52 = (t0 + 7898);
    t54 = (t0 + 4800);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t52, 8U);
    xsi_driver_first_trans_fast(t54);
    goto LAB14;

LAB16:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 7906);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB17:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 7914);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB18:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 7922);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB19:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 7930);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB20:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 7938);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB21:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 7946);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB22:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 7954);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB23:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 7962);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB24:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 7970);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB25:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 7978);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB26:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 7986);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB27:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 7994);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB28:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 8002);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB29:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 8010);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB30:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 8018);
    t4 = (t0 + 4800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB48:;
}

static void work_a_2147781566_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4656);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = (unsigned char)0;

LAB16:    if (t2 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 != 0)
        goto LAB17;

LAB18:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4928);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t3 = (t0 + 2728U);
    t8 = *((char **)t3);
    t3 = (t8 + 0);
    memcpy(t3, t7, 8U);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB6;

LAB8:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 2848U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    memcpy(t1, t4, 8U);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)1;
    goto LAB9;

LAB11:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2728U);
    t7 = *((char **)t1);
    t1 = (t0 + 4864);
    t8 = (t1 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4928);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB12;

LAB14:    t1 = (t0 + 2968U);
    t4 = *((char **)t1);
    t9 = *((unsigned char *)t4);
    t2 = t9;
    goto LAB16;

LAB17:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2848U);
    t7 = *((char **)t1);
    t1 = (t0 + 4864);
    t8 = (t1 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4928);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3088U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB12;

LAB19:    t1 = (t0 + 3088U);
    t4 = *((char **)t1);
    t9 = *((unsigned char *)t4);
    t2 = t9;
    goto LAB21;

}


extern void work_a_2147781566_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2147781566_3212880686_p_0,(void *)work_a_2147781566_3212880686_p_1};
	xsi_register_didat("work_a_2147781566_3212880686", "isim/TestTopLevelOriginal_isim_beh.exe.sim/work/a_2147781566_3212880686.didat");
	xsi_register_executes(pe);
}
