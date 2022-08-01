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
static const char *ng0 = "C:/XilinxProjects/Lab-09/RAM.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_3830602496_3212880686_p_0(char *t0)
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t18;
    char *t20;
    char *t22;
    char *t24;
    char *t26;
    char *t28;
    char *t30;
    char *t32;
    char *t34;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned char t43;
    unsigned char t44;
    unsigned char t45;
    unsigned char t46;
    int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1632U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(128U);
    memset(t1, 0, 128U);
    t5 = t1;
    t6 = (t0 + 6069);
    memcpy(t5, t6, 8U);
    t5 = (t5 + 8U);
    t8 = (t0 + 6077);
    memcpy(t5, t8, 8U);
    t5 = (t5 + 8U);
    t10 = (t0 + 6085);
    memcpy(t5, t10, 8U);
    t5 = (t5 + 8U);
    t12 = (t0 + 6093);
    memcpy(t5, t12, 8U);
    t5 = (t5 + 8U);
    t14 = (t0 + 6101);
    memcpy(t5, t14, 8U);
    t5 = (t5 + 8U);
    t16 = (t0 + 6109);
    memcpy(t5, t16, 8U);
    t5 = (t5 + 8U);
    t18 = (t0 + 6117);
    memcpy(t5, t18, 8U);
    t5 = (t5 + 8U);
    t20 = (t0 + 6125);
    memcpy(t5, t20, 8U);
    t5 = (t5 + 8U);
    t22 = (t0 + 6133);
    memcpy(t5, t22, 8U);
    t5 = (t5 + 8U);
    t24 = (t0 + 6141);
    memcpy(t5, t24, 8U);
    t5 = (t5 + 8U);
    t26 = (t0 + 6149);
    memcpy(t5, t26, 8U);
    t5 = (t5 + 8U);
    t28 = (t0 + 6157);
    memcpy(t5, t28, 8U);
    t5 = (t5 + 8U);
    t30 = (t0 + 6165);
    memcpy(t5, t30, 8U);
    t5 = (t5 + 8U);
    t32 = (t0 + 6173);
    memcpy(t5, t32, 8U);
    t5 = (t5 + 8U);
    t34 = (t0 + 6181);
    memcpy(t5, t34, 8U);
    t5 = (t5 + 8U);
    t36 = (t0 + 6189);
    memcpy(t5, t36, 8U);
    t38 = (t0 + 3712);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t1, 128U);
    xsi_driver_first_trans_fast(t38);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t45 = *((unsigned char *)t6);
    t46 = (t45 == (unsigned char)3);
    if (t46 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB15:
LAB12:    goto LAB6;

LAB8:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t43 = *((unsigned char *)t5);
    t44 = (t43 == (unsigned char)3);
    t3 = t44;
    goto LAB10;

LAB11:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t2 = (t0 + 1192U);
    t8 = *((char **)t2);
    t2 = (t0 + 5852U);
    t47 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t8, t2);
    t48 = (t47 - 15);
    t49 = (t48 * -1);
    t50 = (8U * t49);
    t51 = (0U + t50);
    t9 = (t0 + 3712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 8U);
    xsi_driver_first_trans_delta(t9, t51, 8U, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t1 = (t0 + 5852U);
    t47 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t1);
    t48 = (t47 - 15);
    t49 = (t48 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t47);
    t50 = (8U * t49);
    t51 = (0 + t50);
    t7 = (t5 + t51);
    t8 = (t0 + 3776);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB12;

}


extern void work_a_3830602496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3830602496_3212880686_p_0};
	xsi_register_didat("work_a_3830602496_3212880686", "isim/CPU8bits_isim_beh.exe.sim/work/a_3830602496_3212880686.didat");
	xsi_register_executes(pe);
}
