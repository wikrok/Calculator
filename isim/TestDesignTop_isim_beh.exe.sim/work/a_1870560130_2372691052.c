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
static const char *ng0 = "C:/Users/PC157/Desktop/Phil Seb VHDL/Calculator-Not-Integers/TestDesignTop.vhd";



static void work_a_1870560130_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2148U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2524);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2048);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2524);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2048);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1870560130_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int64 t13;

LAB0:    t1 = (t0 + 2292U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2560);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (40 * 1000LL);
    t8 = (t0 + 2560);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(107, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t13 = (t7 * 10);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t13);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 5304);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(113, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(115, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5312);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(118, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(120, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 5320);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(123, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(125, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 5328);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(128, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(130, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 5336);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(134, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(136, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

LAB48:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5344);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(141, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(143, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 5352);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(146, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(148, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 5360);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(151, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(153, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB74:    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

LAB72:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 5368);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(156, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB78:    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB73:    goto LAB72;

LAB75:    goto LAB73;

LAB76:    xsi_set_current_line(157, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(158, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB82:    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB77:    goto LAB76;

LAB79:    goto LAB77;

LAB80:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 5376);
    t4 = (t0 + 2596);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(161, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB86:    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB81:    goto LAB80;

LAB83:    goto LAB81;

LAB84:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 2632);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (10 * 1000LL);
    t8 = (t0 + 2632);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(163, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2192);
    xsi_process_wait(t2, t7);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB85:    goto LAB84;

LAB87:    goto LAB85;

LAB88:    xsi_set_current_line(164, ng0);

LAB94:    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    xsi_set_current_line(168, ng0);

LAB98:    *((char **)t1) = &&LAB99;
    goto LAB1;

LAB93:    goto LAB92;

LAB95:    goto LAB93;

LAB96:    goto LAB2;

LAB97:    goto LAB96;

LAB99:    goto LAB97;

}


extern void work_a_1870560130_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1870560130_2372691052_p_0,(void *)work_a_1870560130_2372691052_p_1};
	xsi_register_didat("work_a_1870560130_2372691052", "isim/TestDesignTop_isim_beh.exe.sim/work/a_1870560130_2372691052.didat");
	xsi_register_executes(pe);
}
