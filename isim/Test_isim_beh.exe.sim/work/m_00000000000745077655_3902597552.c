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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/faridasoliman.AUC/Downloads/DSP1/DSP/Pitch.v";
static int ng1[] = {2, 0};
static int ng2[] = {3, 0};
static int ng3[] = {10000, 0};
static int ng4[] = {48000, 0};
static int ng5[] = {10000, 0, 0, 0, 0, 0, 0, 0};
static int ng6[] = {2, 0, 0, 0, 0, 0, 0, 0};
static int ng7[] = {12, 0, 0, 0, 0, 0, 0, 0};
static int ng8[] = {417, 0, 0, 0, 0, 0, 0, 0};
static int ng9[] = {0, 0};
static int ng10[] = {5, 0};
static int ng11[] = {1, 0};



static void Always_35_0(char *t0)
{
    char t8[8];
    char t10[8];
    char t12[8];
    char t14[8];
    char t16[32];
    char t17[32];
    char t18[32];
    char t19[32];
    char t20[32];
    char t22[32];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t13;
    char *t15;
    char *t21;
    char *t23;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4304);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_multiply(t8, 32, t6, 16, t7, 32);
    t9 = ((char*)((ng2)));
    memset(t10, 0, 8);
    xsi_vlog_unsigned_multiply(t10, 32, t8, 32, t9, 32);
    t11 = ((char*)((ng3)));
    memset(t12, 0, 8);
    xsi_vlog_unsigned_multiply(t12, 32, t10, 32, t11, 32);
    t13 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_divide(t14, 32, t12, 32, t13, 32);
    t15 = (t0 + 2408);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_multiply(t8, 32, t4, 32, t7, 32);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng5)));
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2248);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    xsi_vlog_unsigned_multiply(t16, 128, t3, 32, t6, 32);
    t7 = (t0 + 2248);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    t13 = ((char*)((ng7)));
    xsi_vlog_unsigned_minus(t17, 128, t11, 32, t13, 32);
    xsi_vlog_unsigned_multiply(t18, 128, t16, 128, t17, 128);
    t15 = ((char*)((ng8)));
    xsi_vlog_unsigned_multiply(t19, 128, t18, 128, t15, 32);
    xsi_vlog_unsigned_add(t20, 128, t2, 32, t19, 128);
    t21 = ((char*)((ng5)));
    xsi_vlog_unsigned_divide(t22, 128, t20, 128, t21, 32);
    t23 = (t0 + 2568);
    xsi_vlogvar_assign_value(t23, t22, 0, 0, 128);
    goto LAB2;

}

static void Always_45_1(char *t0)
{
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 4320);
    *((int *)t2) = 1;
    t3 = (t0 + 3768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB13;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;

LAB13:    t22 = (t13 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t13);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng11)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 16, t5, 32);
    t11 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 16, 0LL);

LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);

LAB9:    xsi_set_current_line(49, ng0);
    t11 = ((char*)((ng9)));
    t12 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 16, 0LL);
    goto LAB8;

LAB12:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(53, ng0);
    t28 = ((char*)((ng9)));
    t29 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 16, 0LL);
    goto LAB16;

}

static void Cont_60_2(char *t0)
{
    char t6[32];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_vlog_unsigned_multiply(t6, 128, t3, 16, t5, 128);
    t7 = (t0 + 4416);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlog_bit_copy(t11, 0, t6, 0, 16);
    xsi_driver_vfirst_trans(t7, 0, 15);
    t12 = (t0 + 4336);
    *((int *)t12) = 1;

LAB1:    return;
}


extern void work_m_00000000000745077655_3902597552_init()
{
	static char *pe[] = {(void *)Always_35_0,(void *)Always_45_1,(void *)Cont_60_2};
	xsi_register_didat("work_m_00000000000745077655_3902597552", "isim/Test_isim_beh.exe.sim/work/m_00000000000745077655_3902597552.didat");
	xsi_register_executes(pe);
}
