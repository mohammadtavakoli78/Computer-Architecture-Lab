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
static const char *ng0 = "C:/XilinxProjects/Lab-09/Divider.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3926497698_3212880686_p_0(char *t0)
{
    char t7[16];
    char t9[16];
    char t22[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    int t15;
    char *t16;
    int t17;
    char *t18;
    unsigned char t19;
    unsigned int t20;
    unsigned int t21;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t8 = ((IEEE_P_2592010699) + 4024);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t6 = xsi_base_array_concat(t6, t7, t8, (char)99, (unsigned char)2, (char)97, t1, t9, (char)101);
    t11 = (t0 + 1648U);
    t14 = *((char **)t11);
    t11 = (t14 + 0);
    t13 = (1U + 8U);
    memcpy(t11, t6, t13);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4749);
    *((int *)t1) = 0;
    t2 = (t0 + 4753);
    *((int *)t2) = 3;
    t12 = 0;
    t15 = 3;

LAB2:    if (t12 <= t15)
        goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = (8 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3032);
    t8 = (t6 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    t1 = (t0 + 2952);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(44, ng0);
    t6 = (t0 + 1648U);
    t8 = *((char **)t6);
    t3 = (8 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t6 = (t8 + t5);
    t11 = ((IEEE_P_2592010699) + 4024);
    t14 = (t9 + 0U);
    t16 = (t14 + 0U);
    *((int *)t16) = 7;
    t16 = (t14 + 4U);
    *((int *)t16) = 0;
    t16 = (t14 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 7);
    t13 = (t17 * -1);
    t13 = (t13 + 1);
    t16 = (t14 + 12U);
    *((unsigned int *)t16) = t13;
    t10 = xsi_base_array_concat(t10, t7, t11, (char)97, t6, t9, (char)99, (unsigned char)2, (char)101);
    t16 = (t0 + 1648U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    t13 = (8U + 1U);
    memcpy(t16, t10, t13);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t7 + 0U);
    t8 = (t6 + 0U);
    *((int *)t8) = 8;
    t8 = (t6 + 4U);
    *((int *)t8) = 4;
    t8 = (t6 + 8U);
    *((int *)t8) = -1;
    t17 = (4 - 8);
    t13 = (t17 * -1);
    t13 = (t13 + 1);
    t8 = (t6 + 12U);
    *((unsigned int *)t8) = t13;
    t8 = (t0 + 1192U);
    t10 = *((char **)t8);
    t8 = (t0 + 4672U);
    t19 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t1, t7, t10, t8);
    if (t19 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t17 = (0 - 8);
    t3 = (t17 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    *((unsigned char *)t1) = (unsigned char)2;

LAB7:
LAB4:    t1 = (t0 + 4749);
    t12 = *((int *)t1);
    t2 = (t0 + 4753);
    t15 = *((int *)t2);
    if (t12 == t15)
        goto LAB5;

LAB9:    t17 = (t12 + 1);
    t12 = t17;
    t6 = (t0 + 4749);
    *((int *)t6) = t12;
    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);
    t11 = (t0 + 1648U);
    t14 = *((char **)t11);
    t13 = (8 - 8);
    t20 = (t13 * 1U);
    t21 = (0 + t20);
    t11 = (t14 + t21);
    t16 = (t22 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 8;
    t18 = (t16 + 4U);
    *((int *)t18) = 4;
    t18 = (t16 + 8U);
    *((int *)t18) = -1;
    t23 = (4 - 8);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t24;
    t18 = (t0 + 1192U);
    t25 = *((char **)t18);
    t18 = (t0 + 4672U);
    t26 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t9, t11, t22, t25, t18);
    t27 = (t0 + 1648U);
    t28 = *((char **)t27);
    t24 = (8 - 8);
    t29 = (t24 * 1U);
    t30 = (0 + t29);
    t27 = (t28 + t30);
    t31 = (t9 + 12U);
    t32 = *((unsigned int *)t31);
    t33 = (1U * t32);
    memcpy(t27, t26, t33);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t17 = (0 - 8);
    t3 = (t17 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB7;

}


extern void work_a_3926497698_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3926497698_3212880686_p_0};
	xsi_register_didat("work_a_3926497698_3212880686", "isim/CPU8bits_isim_beh.exe.sim/work/a_3926497698_3212880686.didat");
	xsi_register_executes(pe);
}
