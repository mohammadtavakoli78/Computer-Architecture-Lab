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
static const char *ng0 = "D:/vhdl/ex9/CPU8bits.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_4280373408_1874548686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5672);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5512);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4280373408_1874548686_p_1(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t3 = (t0 + 8353);
    t6 = 1;
    if (4U == 4U)
        goto LAB11;

LAB12:    t6 = 0;

LAB13:    if (t6 == 1)
        goto LAB8;

LAB9:    t10 = (t0 + 2632U);
    t11 = *((char **)t10);
    t10 = (t0 + 8357);
    t13 = 1;
    if (4U == 4U)
        goto LAB17;

LAB18:    t13 = 0;

LAB19:    t2 = t13;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB23:    t25 = (t0 + 5736);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 5528);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t17 = (t0 + 5736);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB5:    t17 = (t0 + 1192U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)2);
    t1 = t20;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t7 = 0;

LAB14:    if (t7 < 4U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t8 = (t4 + t7);
    t9 = (t3 + t7);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB12;

LAB16:    t7 = (t7 + 1);
    goto LAB14;

LAB17:    t14 = 0;

LAB20:    if (t14 < 4U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t15 = (t11 + t14);
    t16 = (t10 + t14);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB18;

LAB22:    t14 = (t14 + 1);
    goto LAB20;

LAB24:    goto LAB2;

}

static void work_a_4280373408_1874548686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 8361);
    t5 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t17 = (t0 + 5800);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 5544);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 5800);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    t1 = t12;
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t7 = (t3 + t6);
    t8 = (t2 + t6);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_4280373408_1874548686_p_3(char *t0)
{
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

LAB0:    xsi_set_current_line(55, ng0);
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
LAB3:    t1 = (t0 + 5560);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 5864);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t2 = (t0 + 5864);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void work_a_4280373408_1874548686_p_4(char *t0)
{
    char t21[16];
    char t22[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 != (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t1 = (t0 + 8365);
    t7 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t7 = 0;

LAB10:    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8373);
    t3 = 1;
    if (4U == 4U)
        goto LAB16;

LAB17:    t3 = 0;

LAB18:    if (t3 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 8377);
    t5 = (t0 + 5928);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(67, ng0);
    t11 = (t0 + 8369);
    t13 = (t0 + 5928);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB6;

LAB8:    t8 = 0;

LAB11:    if (t8 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t9 = (t5 + t8);
    t10 = (t1 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB9;

LAB13:    t8 = (t8 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(69, ng0);
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t18 = (7 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t10 = (t11 + t20);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t22 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 7;
    t15 = (t14 + 4U);
    *((int *)t15) = 5;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t23 = (5 - 7);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t24;
    t12 = xsi_base_array_concat(t12, t21, t13, (char)99, (unsigned char)3, (char)97, t10, t22, (char)101);
    t24 = (1U + 3U);
    t4 = (4U != t24);
    if (t4 == 1)
        goto LAB22;

LAB23:    t15 = (t0 + 5928);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t25 = (t17 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t12, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB6;

LAB16:    t8 = 0;

LAB19:    if (t8 < 4U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB17;

LAB21:    t8 = (t8 + 1);
    goto LAB19;

LAB22:    xsi_size_not_matching(4U, t24, 0);
    goto LAB23;

}

static void work_a_4280373408_1874548686_p_5(char *t0)
{
    char t40[16];
    char t44[16];
    char t45[16];
    char t47[16];
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
    int t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t46;
    unsigned int t48;

LAB0:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 8381);
    t11 = xsi_mem_cmp(t1, t2, 4U);
    if (t11 == 1)
        goto LAB6;

LAB17:    t6 = (t0 + 8385);
    t12 = xsi_mem_cmp(t6, t2, 4U);
    if (t12 == 1)
        goto LAB7;

LAB18:    t8 = (t0 + 8389);
    t13 = xsi_mem_cmp(t8, t2, 4U);
    if (t13 == 1)
        goto LAB8;

LAB19:    t10 = (t0 + 8393);
    t15 = xsi_mem_cmp(t10, t2, 4U);
    if (t15 == 1)
        goto LAB9;

LAB20:    t16 = (t0 + 8397);
    t18 = xsi_mem_cmp(t16, t2, 4U);
    if (t18 == 1)
        goto LAB10;

LAB21:    t19 = (t0 + 8401);
    t21 = xsi_mem_cmp(t19, t2, 4U);
    if (t21 == 1)
        goto LAB11;

LAB22:    t22 = (t0 + 8405);
    t24 = xsi_mem_cmp(t22, t2, 4U);
    if (t24 == 1)
        goto LAB12;

LAB23:    t25 = (t0 + 8409);
    t27 = xsi_mem_cmp(t25, t2, 4U);
    if (t27 == 1)
        goto LAB13;

LAB24:    t28 = (t0 + 8413);
    t30 = xsi_mem_cmp(t28, t2, 4U);
    if (t30 == 1)
        goto LAB14;

LAB25:    t31 = (t0 + 8417);
    t33 = xsi_mem_cmp(t31, t2, 4U);
    if (t33 == 1)
        goto LAB15;

LAB26:
LAB16:    xsi_set_current_line(109, ng0);

LAB5:
LAB3:    t1 = (t0 + 5592);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(79, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t5 = t1;
    memset(t5, (unsigned char)2, 9U);
    t6 = (t0 + 5992);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 9U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(80, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t5 = (t0 + 6056);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(81, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)2, 5U);
    t5 = (t0 + 6120);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB6:    xsi_set_current_line(85, ng0);
    t34 = (t0 + 2312U);
    t35 = *((char **)t34);
    t34 = (t0 + 6120);
    t36 = (t34 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t35, 5U);
    xsi_driver_first_trans_fast(t34);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8244U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t40, t2, t1, 1);
    t6 = (t0 + 6056);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB5;

LAB7:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t41 = (7 - 4);
    t42 = (t41 * 1U);
    t43 = (0 + t42);
    t1 = (t2 + t43);
    t5 = (t0 + 6120);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 8180U);
    t1 = xsi_base_array_concat(t1, t40, t5, (char)99, (unsigned char)2, (char)97, t2, t6, (char)101);
    t41 = (1U + 8U);
    t3 = (9U != t41);
    if (t3 == 1)
        goto LAB28;

LAB29:    t7 = (t0 + 5992);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t1, 9U);
    xsi_driver_first_trans_fast(t7);
    goto LAB5;

LAB9:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t41 = (8 - 7);
    t42 = (t41 * 1U);
    t43 = (0 + t42);
    t1 = (t2 + t43);
    t5 = (t0 + 6184);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB5;

LAB10:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 6056);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t11 = (8 - 8);
    t41 = (t11 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t1 = (t2 + t43);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB30;

LAB32:
LAB31:    goto LAB5;

LAB12:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8228U);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 8180U);
    t5 = xsi_base_array_concat(t5, t44, t7, (char)99, (unsigned char)2, (char)97, t6, t8, (char)101);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t40, t2, t1, t5, t44);
    t10 = (t40 + 12U);
    t41 = *((unsigned int *)t10);
    t42 = (1U * t41);
    t3 = (9U != t42);
    if (t3 == 1)
        goto LAB33;

LAB34:    t14 = (t0 + 5992);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 9U);
    xsi_driver_first_trans_fast(t14);
    goto LAB5;

LAB13:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t41 = (8 - 7);
    t42 = (t41 * 1U);
    t43 = (0 + t42);
    t1 = (t2 + t43);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t45 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t11 = (0 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t46;
    t5 = xsi_base_array_concat(t5, t44, t6, (char)99, (unsigned char)2, (char)97, t1, t45, (char)101);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t10 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 8180U);
    t8 = xsi_base_array_concat(t8, t47, t10, (char)99, (unsigned char)2, (char)97, t9, t14, (char)101);
    t16 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t40, t5, t44, t8, t47);
    t17 = (t0 + 5992);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t16, 9U);
    xsi_driver_first_trans_fast(t17);
    goto LAB5;

LAB14:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t41 = (8 - 7);
    t42 = (t41 * 1U);
    t43 = (0 + t42);
    t1 = (t2 + t43);
    t5 = (t44 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t11 = (0 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t46;
    t6 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t40, t1, t44);
    t7 = (t40 + 12U);
    t46 = *((unsigned int *)t7);
    t48 = (1U * t46);
    t3 = (8U != t48);
    if (t3 == 1)
        goto LAB35;

LAB36:    t8 = (t0 + 5992);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t6, 8U);
    xsi_driver_first_trans_delta(t8, 1U, 8U, 0LL);
    goto LAB5;

LAB15:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t41 = (8 - 7);
    t42 = (t41 * 1U);
    t43 = (0 + t42);
    t1 = (t2 + t43);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t44 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t11 = (0 - 7);
    t46 = (t11 * -1);
    t46 = (t46 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t46;
    t5 = xsi_base_array_concat(t5, t40, t6, (char)97, t1, t44, (char)99, (unsigned char)2, (char)101);
    t46 = (8U + 1U);
    t3 = (9U != t46);
    if (t3 == 1)
        goto LAB37;

LAB38:    t8 = (t0 + 5992);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t5, 9U);
    xsi_driver_first_trans_fast(t8);
    goto LAB5;

LAB27:;
LAB28:    xsi_size_not_matching(9U, t41, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(97, ng0);
    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t5 = (t0 + 6056);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 5U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5992);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB31;

LAB33:    xsi_size_not_matching(9U, t42, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(8U, t48, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(9U, t46, 0);
    goto LAB38;

}


extern void work_a_4280373408_1874548686_init()
{
	static char *pe[] = {(void *)work_a_4280373408_1874548686_p_0,(void *)work_a_4280373408_1874548686_p_1,(void *)work_a_4280373408_1874548686_p_2,(void *)work_a_4280373408_1874548686_p_3,(void *)work_a_4280373408_1874548686_p_4,(void *)work_a_4280373408_1874548686_p_5};
	xsi_register_didat("work_a_4280373408_1874548686", "isim/CPU8bits_isim_beh.exe.sim/work/a_4280373408_1874548686.didat");
	xsi_register_executes(pe);
}
