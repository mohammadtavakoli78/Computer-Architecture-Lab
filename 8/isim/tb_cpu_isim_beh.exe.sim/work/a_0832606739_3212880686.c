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
static const char *ng0 = "C:/XilinxProjects/Lab-09/ALU.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_3798478767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_43738421_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 8156U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t3, t2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (8U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5344);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 8U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 5248);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t7, 0);
    goto LAB6;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(95, ng0);

LAB3:    t1 = (t0 + 8309);
    t3 = (4U != 4U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 5408);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB6;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char t53[16];
    char t69[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;

LAB0:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1472U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5264);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t4 = (t0 + 8313);
    t10 = xsi_mem_cmp(t4, t8, 4U);
    if (t10 == 1)
        goto LAB9;

LAB25:    t11 = (t0 + 8317);
    t13 = xsi_mem_cmp(t11, t8, 4U);
    if (t13 == 1)
        goto LAB10;

LAB26:    t14 = (t0 + 8321);
    t16 = xsi_mem_cmp(t14, t8, 4U);
    if (t16 == 1)
        goto LAB11;

LAB27:    t17 = (t0 + 8325);
    t19 = xsi_mem_cmp(t17, t8, 4U);
    if (t19 == 1)
        goto LAB12;

LAB28:    t20 = (t0 + 8329);
    t22 = xsi_mem_cmp(t20, t8, 4U);
    if (t22 == 1)
        goto LAB13;

LAB29:    t23 = (t0 + 8333);
    t25 = xsi_mem_cmp(t23, t8, 4U);
    if (t25 == 1)
        goto LAB14;

LAB30:    t26 = (t0 + 8337);
    t28 = xsi_mem_cmp(t26, t8, 4U);
    if (t28 == 1)
        goto LAB15;

LAB31:    t29 = (t0 + 8341);
    t31 = xsi_mem_cmp(t29, t8, 4U);
    if (t31 == 1)
        goto LAB16;

LAB32:    t32 = (t0 + 8345);
    t34 = xsi_mem_cmp(t32, t8, 4U);
    if (t34 == 1)
        goto LAB17;

LAB33:    t35 = (t0 + 8349);
    t37 = xsi_mem_cmp(t35, t8, 4U);
    if (t37 == 1)
        goto LAB18;

LAB34:    t38 = (t0 + 8353);
    t40 = xsi_mem_cmp(t38, t8, 4U);
    if (t40 == 1)
        goto LAB19;

LAB35:    t41 = (t0 + 8357);
    t43 = xsi_mem_cmp(t41, t8, 4U);
    if (t43 == 1)
        goto LAB20;

LAB36:    t44 = (t0 + 8361);
    t46 = xsi_mem_cmp(t44, t8, 4U);
    if (t46 == 1)
        goto LAB21;

LAB37:    t47 = (t0 + 8365);
    t49 = xsi_mem_cmp(t47, t8, 4U);
    if (t49 == 1)
        goto LAB22;

LAB38:    t50 = (t0 + 8369);
    t52 = xsi_mem_cmp(t50, t8, 4U);
    if (t52 == 1)
        goto LAB23;

LAB39:
LAB24:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5472);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(104, ng0);
    t54 = (t0 + 1032U);
    t55 = *((char **)t54);
    t54 = (t0 + 8140U);
    t56 = (t0 + 1192U);
    t57 = *((char **)t56);
    t56 = (t0 + 8156U);
    t58 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t53, t55, t54, t57, t56);
    t59 = (t53 + 12U);
    t60 = *((unsigned int *)t59);
    t61 = (1U * t60);
    t62 = (8U != t61);
    if (t62 == 1)
        goto LAB41;

LAB42:    t63 = (t0 + 5472);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    memcpy(t67, t58, 8U);
    xsi_driver_first_trans_fast_port(t63);
    goto LAB8;

LAB10:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 5472);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 5536);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t1;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 8140U);
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t53, t4, t2);
    t8 = (t53 + 12U);
    t60 = *((unsigned int *)t8);
    t61 = (1U * t60);
    t1 = (8U != t61);
    if (t1 == 1)
        goto LAB43;

LAB44:    t9 = (t0 + 5472);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB8;

LAB12:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t60 = (7 - 7);
    t61 = (t60 * 1U);
    t68 = (0 + t61);
    t2 = (t4 + t68);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t69 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 7;
    t11 = (t9 + 4U);
    *((int *)t11) = 1;
    t11 = (t9 + 8U);
    *((int *)t11) = -1;
    t10 = (1 - 7);
    t70 = (t10 * -1);
    t70 = (t70 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t70;
    t5 = xsi_base_array_concat(t5, t53, t8, (char)99, (unsigned char)2, (char)97, t2, t69, (char)101);
    t70 = (1U + 7U);
    t1 = (8U != t70);
    if (t1 == 1)
        goto LAB45;

LAB46:    t11 = (t0 + 5472);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t5, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB8;

LAB13:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t60 = (7 - 6);
    t61 = (t60 * 1U);
    t68 = (0 + t61);
    t2 = (t4 + t68);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t69 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 6;
    t11 = (t9 + 4U);
    *((int *)t11) = 0;
    t11 = (t9 + 8U);
    *((int *)t11) = -1;
    t10 = (0 - 6);
    t70 = (t10 * -1);
    t70 = (t70 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t70;
    t5 = xsi_base_array_concat(t5, t53, t8, (char)97, t2, t69, (char)99, (unsigned char)2, (char)101);
    t70 = (7U + 1U);
    t1 = (8U != t70);
    if (t1 == 1)
        goto LAB47;

LAB48:    t11 = (t0 + 5472);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t5, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB8;

LAB14:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t10 = (0 - 7);
    t60 = (t10 * -1);
    t61 = (1U * t60);
    t68 = (0 + t61);
    t2 = (t4 + t68);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 1032U);
    t8 = *((char **)t5);
    t70 = (7 - 7);
    t71 = (t70 * 1U);
    t72 = (0 + t71);
    t5 = (t8 + t72);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t69 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 7;
    t14 = (t12 + 4U);
    *((int *)t14) = 1;
    t14 = (t12 + 8U);
    *((int *)t14) = -1;
    t13 = (1 - 7);
    t73 = (t13 * -1);
    t73 = (t73 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t73;
    t9 = xsi_base_array_concat(t9, t53, t11, (char)99, t1, (char)97, t5, t69, (char)101);
    t73 = (1U + 7U);
    t3 = (8U != t73);
    if (t3 == 1)
        goto LAB49;

LAB50:    t14 = (t0 + 5472);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 8U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB8;

LAB15:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t60 = (7 - 6);
    t61 = (t60 * 1U);
    t68 = (0 + t61);
    t2 = (t4 + t68);
    t5 = (t0 + 1032U);
    t8 = *((char **)t5);
    t10 = (7 - 7);
    t70 = (t10 * -1);
    t71 = (1U * t70);
    t72 = (0 + t71);
    t5 = (t8 + t72);
    t1 = *((unsigned char *)t5);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t69 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 6;
    t14 = (t12 + 4U);
    *((int *)t14) = 0;
    t14 = (t12 + 8U);
    *((int *)t14) = -1;
    t13 = (0 - 6);
    t73 = (t13 * -1);
    t73 = (t73 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t73;
    t9 = xsi_base_array_concat(t9, t53, t11, (char)97, t2, t69, (char)99, t1, (char)101);
    t73 = (7U + 1U);
    t3 = (8U != t73);
    if (t3 == 1)
        goto LAB51;

LAB52:    t14 = (t0 + 5472);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 8U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB8;

LAB16:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 2312U);
    t4 = *((char **)t2);
    t2 = (t0 + 5472);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 5536);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB17:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 5472);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB18:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 5472);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB19:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 8140U);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t5 = (t0 + 8156U);
    t9 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t53, t4, t2, t8, t5);
    t11 = (t53 + 12U);
    t60 = *((unsigned int *)t11);
    t61 = (1U * t60);
    t1 = (8U != t61);
    if (t1 == 1)
        goto LAB53;

LAB54:    t12 = (t0 + 5472);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB8;

LAB20:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 8140U);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t5 = (t0 + 8156U);
    t9 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t53, t4, t2, t8, t5);
    t11 = (t53 + 12U);
    t60 = *((unsigned int *)t11);
    t61 = (1U * t60);
    t1 = (8U != t61);
    if (t1 == 1)
        goto LAB55;

LAB56:    t12 = (t0 + 5472);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB8;

LAB21:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 8140U);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t5 = (t0 + 8156U);
    t9 = ieee_p_2592010699_sub_3798478767_503743352(IEEE_P_2592010699, t53, t4, t2, t8, t5);
    t11 = (t53 + 12U);
    t60 = *((unsigned int *)t11);
    t61 = (1U * t60);
    t1 = (8U != t61);
    if (t1 == 1)
        goto LAB57;

LAB58:    t12 = (t0 + 5472);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB8;

LAB22:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 8140U);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t5 = (t0 + 8156U);
    t9 = ieee_p_2592010699_sub_43738421_503743352(IEEE_P_2592010699, t53, t4, t2, t8, t5);
    t11 = (t53 + 12U);
    t60 = *((unsigned int *)t11);
    t61 = (1U * t60);
    t1 = (8U != t61);
    if (t1 == 1)
        goto LAB59;

LAB60:    t12 = (t0 + 5472);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB8;

LAB23:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 8140U);
    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t5 = (t0 + 8156U);
    t9 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t53, t4, t2, t8, t5);
    t11 = (t53 + 12U);
    t60 = *((unsigned int *)t11);
    t61 = (1U * t60);
    t1 = (8U != t61);
    if (t1 == 1)
        goto LAB61;

LAB62:    t12 = (t0 + 5472);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB8;

LAB40:;
LAB41:    xsi_size_not_matching(8U, t61, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(8U, t61, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(8U, t70, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(8U, t70, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(8U, t73, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(8U, t73, 0);
    goto LAB52;

LAB53:    xsi_size_not_matching(8U, t61, 0);
    goto LAB54;

LAB55:    xsi_size_not_matching(8U, t61, 0);
    goto LAB56;

LAB57:    xsi_size_not_matching(8U, t61, 0);
    goto LAB58;

LAB59:    xsi_size_not_matching(8U, t61, 0);
    goto LAB60;

LAB61:    xsi_size_not_matching(8U, t61, 0);
    goto LAB62;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/tb_cpu_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
