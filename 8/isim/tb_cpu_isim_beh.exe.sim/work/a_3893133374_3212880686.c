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
static const char *ng0 = "C:/XilinxProjects/Lab-09/CPU8bits.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3893133374_3212880686_p_0(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 10920);
    t3 = (t0 + 3752U);
    t4 = *((char **)t3);
    t5 = (3 - 1);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 1;
    t17 = (t13 + 4U);
    *((int *)t17) = 0;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 1);
    t15 = (t18 * -1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t11, (char)97, t3, t16, (char)101);
    t15 = (2U + 2U);
    t19 = (4U != t15);
    if (t19 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 7160);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 4U);
    xsi_driver_first_trans_fast(t17);

LAB2:    t24 = (t0 + 6968);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t15, 0);
    goto LAB6;

}

static void work_a_3893133374_3212880686_p_1(char *t0)
{
    char t32[16];
    char t45[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned char t49;
    unsigned char t50;

LAB0:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6984);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(80, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t5 = t1;
    memset(t5, (unsigned char)2, 5U);
    t6 = (t0 + 7224);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 10922);
    t5 = (t0 + 7288);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(82, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t2 = t1;
    memset(t2, (unsigned char)2, 9U);
    t5 = (t0 + 7352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 9U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(83, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t5 = (t0 + 7416);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3752U);
    t5 = *((char **)t2);
    t2 = (t0 + 10926);
    t11 = xsi_mem_cmp(t2, t5, 4U);
    if (t11 == 1)
        goto LAB8;

LAB18:    t7 = (t0 + 10930);
    t12 = xsi_mem_cmp(t7, t5, 4U);
    if (t12 == 1)
        goto LAB9;

LAB19:    t9 = (t0 + 10934);
    t13 = xsi_mem_cmp(t9, t5, 4U);
    if (t13 == 1)
        goto LAB10;

LAB20:    t14 = (t0 + 10938);
    t16 = xsi_mem_cmp(t14, t5, 4U);
    if (t16 == 1)
        goto LAB11;

LAB21:    t17 = (t0 + 10942);
    t19 = xsi_mem_cmp(t17, t5, 4U);
    if (t19 == 1)
        goto LAB12;

LAB22:    t20 = (t0 + 10946);
    t22 = xsi_mem_cmp(t20, t5, 4U);
    if (t22 == 1)
        goto LAB13;

LAB23:    t23 = (t0 + 10950);
    t25 = xsi_mem_cmp(t23, t5, 4U);
    if (t25 == 1)
        goto LAB14;

LAB24:    t26 = (t0 + 10954);
    t28 = xsi_mem_cmp(t26, t5, 4U);
    if (t28 == 1)
        goto LAB15;

LAB25:    t29 = (t0 + 10958);
    t31 = xsi_mem_cmp(t29, t5, 4U);
    if (t31 == 1)
        goto LAB16;

LAB26:
LAB17:    xsi_set_current_line(119, ng0);

LAB7:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 10832U);
    t5 = (t0 + 10963);
    t7 = (t32 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t11 = (3 - 0);
    t37 = (t11 * 1);
    t37 = (t37 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t37;
    t3 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t5, t32);
    if (t3 != 0)
        goto LAB40;

LAB42:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 10971);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t4 == 1)
        goto LAB45;

LAB46:    t3 = (unsigned char)0;

LAB47:    if (t3 != 0)
        goto LAB43;

LAB44:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 10978);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t3 != 0)
        goto LAB48;

LAB49:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 10985);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t3 != 0)
        goto LAB50;

LAB51:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 10992);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t3 != 0)
        goto LAB52;

LAB53:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 10999);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t4 == 1)
        goto LAB56;

LAB57:    t3 = (unsigned char)0;

LAB58:    if (t3 != 0)
        goto LAB54;

LAB55:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 11006);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t3 != 0)
        goto LAB59;

LAB60:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 11013);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t3 != 0)
        goto LAB61;

LAB62:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 11020);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t3 != 0)
        goto LAB63;

LAB64:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 7);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t32 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 5;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (5 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = (t0 + 11027);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 2;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (2 - 0);
    t46 = (t12 * 1);
    t46 = (t46 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t46;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t32, t6, t45);
    if (t3 != 0)
        goto LAB65;

LAB66:
LAB41:    goto LAB3;

LAB8:    xsi_set_current_line(95, ng0);
    t33 = (t0 + 3592U);
    t34 = *((char **)t33);
    t33 = (t0 + 10816U);
    t35 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t32, t34, t33, 1);
    t36 = (t32 + 12U);
    t37 = *((unsigned int *)t36);
    t38 = (1U * t37);
    t4 = (5U != t38);
    if (t4 == 1)
        goto LAB28;

LAB29:    t39 = (t0 + 7416);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t35, 5U);
    xsi_driver_first_trans_fast(t39);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t37 = (7 - 4);
    t38 = (t37 * 1U);
    t44 = (0 + t38);
    t1 = (t2 + t44);
    t5 = (t0 + 7224);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB7;

LAB9:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 10962);
    t5 = (t0 + 2312U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t45 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t11 = (0 - 0);
    t37 = (t11 * 1);
    t37 = (t37 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t37;
    t9 = (t0 + 10768U);
    t5 = xsi_base_array_concat(t5, t32, t7, (char)97, t1, t45, (char)97, t6, t9, (char)101);
    t37 = (1U + 8U);
    t3 = (9U != t37);
    if (t3 == 1)
        goto LAB30;

LAB31:    t10 = (t0 + 7352);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 9U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB11:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB12:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 7352);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB13:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 10768U);
    t1 = xsi_base_array_concat(t1, t32, t6, (char)99, t3, (char)97, t5, t7, (char)101);
    t37 = (1U + 8U);
    t4 = (9U != t37);
    if (t4 == 1)
        goto LAB32;

LAB33:    t8 = (t0 + 7352);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 9U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB14:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 10768U);
    t1 = xsi_base_array_concat(t1, t32, t6, (char)99, t3, (char)97, t5, t7, (char)101);
    t37 = (1U + 8U);
    t4 = (9U != t37);
    if (t4 == 1)
        goto LAB34;

LAB35:    t8 = (t0 + 7352);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 9U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB15:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 10768U);
    t1 = xsi_base_array_concat(t1, t32, t6, (char)99, t3, (char)97, t5, t7, (char)101);
    t37 = (1U + 8U);
    t4 = (9U != t37);
    if (t4 == 1)
        goto LAB36;

LAB37:    t8 = (t0 + 7352);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 9U);
    xsi_driver_first_trans_fast(t8);
    goto LAB7;

LAB16:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 10768U);
    t1 = xsi_base_array_concat(t1, t32, t6, (char)99, t3, (char)97, t5, t7, (char)101);
    t37 = (1U + 8U);
    t4 = (9U != t37);
    if (t4 == 1)
        goto LAB38;

LAB39:    t8 = (t0 + 7352);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 9U);
    xsi_driver_first_trans_fast(t8);
    goto LAB7;

LAB27:;
LAB28:    xsi_size_not_matching(5U, t38, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(9U, t37, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(9U, t37, 0);
    goto LAB33;

LAB34:    xsi_size_not_matching(9U, t37, 0);
    goto LAB35;

LAB36:    xsi_size_not_matching(9U, t37, 0);
    goto LAB37;

LAB38:    xsi_size_not_matching(9U, t37, 0);
    goto LAB39;

LAB40:    xsi_set_current_line(123, ng0);
    t8 = (t0 + 10967);
    t10 = (t0 + 7288);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB41;

LAB43:    xsi_set_current_line(125, ng0);
    t14 = (t0 + 10974);
    t17 = (t0 + 7288);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t14, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB41;

LAB45:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t13 = (8 - 8);
    t46 = (t13 * -1);
    t47 = (1U * t46);
    t48 = (0 + t47);
    t9 = (t10 + t48);
    t49 = *((unsigned char *)t9);
    t50 = (t49 == (unsigned char)2);
    t3 = t50;
    goto LAB47;

LAB48:    xsi_set_current_line(127, ng0);
    t9 = (t0 + 10981);
    t14 = (t0 + 7288);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB41;

LAB50:    xsi_set_current_line(129, ng0);
    t9 = (t0 + 10988);
    t14 = (t0 + 7288);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB41;

LAB52:    xsi_set_current_line(131, ng0);
    t9 = (t0 + 10995);
    t14 = (t0 + 7288);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB41;

LAB54:    xsi_set_current_line(133, ng0);
    t14 = (t0 + 11002);
    t17 = (t0 + 7288);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t14, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB41;

LAB56:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t13 = (8 - 8);
    t46 = (t13 * -1);
    t47 = (1U * t46);
    t48 = (0 + t47);
    t9 = (t10 + t48);
    t49 = *((unsigned char *)t9);
    t50 = (t49 == (unsigned char)3);
    t3 = t50;
    goto LAB58;

LAB59:    xsi_set_current_line(135, ng0);
    t9 = (t0 + 11009);
    t14 = (t0 + 7288);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB41;

LAB61:    xsi_set_current_line(137, ng0);
    t9 = (t0 + 11016);
    t14 = (t0 + 7288);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB41;

LAB63:    xsi_set_current_line(139, ng0);
    t9 = (t0 + 11023);
    t14 = (t0 + 7288);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB41;

LAB65:    xsi_set_current_line(141, ng0);
    t9 = (t0 + 11030);
    t14 = (t0 + 7288);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB41;

}

static void work_a_3893133374_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(147, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 7480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7000);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3893133374_3212880686_p_3(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 10832U);
    t3 = (t0 + 11034);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t17 = (t0 + 2152U);
    t18 = *((char **)t17);
    t9 = (8 - 7);
    t19 = (t9 * 1U);
    t20 = (0 + t19);
    t17 = (t18 + t20);
    t21 = (t0 + 7544);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t17, 8U);
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t26 = (t0 + 7016);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 11038);
    t12 = (t0 + 7544);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3893133374_3212880686_p_4(char *t0)
{
    char t12[16];
    char t24[16];
    char t32[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t25;
    char *t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(149, ng0);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB14;

LAB15:    t5 = (t0 + 3752U);
    t9 = *((char **)t5);
    t5 = (t0 + 10832U);
    t10 = (t0 + 11046);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 3;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (3 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t5, t10, t12);
    t4 = t17;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t14 = (t0 + 1352U);
    t18 = *((char **)t14);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)2);
    t3 = t20;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t14 = (t0 + 3752U);
    t21 = *((char **)t14);
    t14 = (t0 + 10832U);
    t22 = (t0 + 11050);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 3;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t16;
    t28 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t14, t22, t24);
    t2 = t28;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t26 = (t0 + 3752U);
    t29 = *((char **)t26);
    t26 = (t0 + 10832U);
    t30 = (t0 + 11054);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 0;
    t34 = (t33 + 4U);
    *((int *)t34) = 3;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t35 = (3 - 0);
    t16 = (t35 * 1);
    t16 = (t16 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t16;
    t36 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t29, t26, t30, t32);
    t1 = t36;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB17:    t41 = (t0 + 7608);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    *((unsigned char *)t45) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t41);

LAB2:    t46 = (t0 + 7032);
    *((int *)t46) = 1;

LAB1:    return;
LAB3:    t34 = (t0 + 7608);
    t37 = (t34 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t34);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (unsigned char)1;
    goto LAB16;

LAB18:    goto LAB2;

}

static void work_a_3893133374_3212880686_p_5(char *t0)
{
    char t12[16];
    char t24[16];
    char t32[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t25;
    char *t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(150, ng0);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB14;

LAB15:    t5 = (t0 + 3752U);
    t9 = *((char **)t5);
    t5 = (t0 + 10832U);
    t10 = (t0 + 11058);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 3;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (3 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t5, t10, t12);
    t4 = t17;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t14 = (t0 + 1352U);
    t18 = *((char **)t14);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)2);
    t3 = t20;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t14 = (t0 + 3752U);
    t21 = *((char **)t14);
    t14 = (t0 + 10832U);
    t22 = (t0 + 11062);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 3;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (3 - 0);
    t16 = (t27 * 1);
    t16 = (t16 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t16;
    t28 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t14, t22, t24);
    t2 = t28;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t26 = (t0 + 3752U);
    t29 = *((char **)t26);
    t26 = (t0 + 10832U);
    t30 = (t0 + 11066);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 0;
    t34 = (t33 + 4U);
    *((int *)t34) = 3;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t35 = (3 - 0);
    t16 = (t35 * 1);
    t16 = (t16 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t16;
    t36 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t29, t26, t30, t32);
    t1 = t36;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB17:    t41 = (t0 + 7672);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    *((unsigned char *)t45) = (unsigned char)3;
    xsi_driver_first_trans_fast(t41);

LAB2:    t46 = (t0 + 7048);
    *((int *)t46) = 1;

LAB1:    return;
LAB3:    t34 = (t0 + 7672);
    t37 = (t34 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)2;
    xsi_driver_first_trans_fast(t34);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t3 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (unsigned char)1;
    goto LAB16;

LAB18:    goto LAB2;

}

static void work_a_3893133374_3212880686_p_6(char *t0)
{
    char t10[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(151, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 3752U);
    t7 = *((char **)t3);
    t3 = (t0 + 10832U);
    t8 = (t0 + 11070);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (3 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t7, t3, t8, t10);
    t2 = t15;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 1352U);
    t16 = *((char **)t12);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    t1 = t18;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t23 = (t0 + 7736);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t28 = (t0 + 7064);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 7736);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_3893133374_3212880686_p_7(char *t0)
{
    char t10[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(152, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 3752U);
    t7 = *((char **)t3);
    t3 = (t0 + 10832U);
    t8 = (t0 + 11074);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (3 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t7, t3, t8, t10);
    t2 = t15;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 1352U);
    t16 = *((char **)t12);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)2);
    t1 = t18;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t23 = (t0 + 7800);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = (unsigned char)3;
    xsi_driver_first_trans_fast(t23);

LAB2:    t28 = (t0 + 7080);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 7800);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}


extern void work_a_3893133374_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3893133374_3212880686_p_0,(void *)work_a_3893133374_3212880686_p_1,(void *)work_a_3893133374_3212880686_p_2,(void *)work_a_3893133374_3212880686_p_3,(void *)work_a_3893133374_3212880686_p_4,(void *)work_a_3893133374_3212880686_p_5,(void *)work_a_3893133374_3212880686_p_6,(void *)work_a_3893133374_3212880686_p_7};
	xsi_register_didat("work_a_3893133374_3212880686", "isim/tb_cpu_isim_beh.exe.sim/work/a_3893133374_3212880686.didat");
	xsi_register_executes(pe);
}
