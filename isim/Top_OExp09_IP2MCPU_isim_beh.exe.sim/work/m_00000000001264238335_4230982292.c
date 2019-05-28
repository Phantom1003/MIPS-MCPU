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
static const char *ng0 = "C:/Users/89293/Desktop/SWORDSoC/UART_Queue/Lab1_V4_final/UART.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {4294967295U, 0U};
static unsigned int ng4[] = {256U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {2U, 0U};



static void Always_37_0(char *t0)
{
    char t14[8];
    char t15[8];
    char t36[8];
    char t47[8];
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
    int t13;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    int t70;
    int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;

LAB0:    t1 = (t0 + 4328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 4648);
    *((int *)t2) = 1;
    t3 = (t0 + 4360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1888U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB10:    t5 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB17;

LAB18:
LAB19:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 10, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(44, ng0);

LAB20:    xsi_set_current_line(45, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2768);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2048U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(51, ng0);

LAB25:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng5)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 10, t5, 10, t11, 10);
    t12 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t12, t14, 0, 0, 10, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 2208U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng2)));
    xsi_vlogtype_concat(t14, 10, 10, 2U, t11, 1, t12, 9);
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t14);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t16);
    t10 = *((unsigned int *)t17);
    t18 = (t9 ^ t10);
    t19 = (t8 | t18);
    t20 = *((unsigned int *)t16);
    t21 = *((unsigned int *)t17);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB29;

LAB26:    if (t22 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t15) = 1;

LAB29:    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t15);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB32:
LAB23:    goto LAB19;

LAB13:    xsi_set_current_line(61, ng0);

LAB34:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 3088);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng5)));
    t16 = (t0 + 2208U);
    t17 = *((char **)t16);
    xsi_vlogtype_concat(t14, 10, 10, 2U, t17, 9, t12, 1);
    memset(t15, 0, 8);
    t16 = (t11 + 4);
    t25 = (t14 + 4);
    t6 = *((unsigned int *)t11);
    t7 = *((unsigned int *)t14);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t16);
    t10 = *((unsigned int *)t25);
    t18 = (t9 ^ t10);
    t19 = (t8 | t18);
    t20 = *((unsigned int *)t16);
    t21 = *((unsigned int *)t25);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB38;

LAB35:    if (t22 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t15) = 1;

LAB38:    t32 = (t15 + 4);
    t27 = *((unsigned int *)t32);
    t28 = (~(t27));
    t29 = *((unsigned int *)t15);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng5)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 10, t5, 10, t11, 10);
    t12 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t12, t14, 0, 0, 10, 0LL);

LAB41:    goto LAB19;

LAB15:    xsi_set_current_line(71, ng0);

LAB46:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 3088);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng5)));
    t16 = (t0 + 2208U);
    t17 = *((char **)t16);
    xsi_vlogtype_concat(t14, 10, 10, 2U, t17, 9, t12, 1);
    memset(t15, 0, 8);
    t16 = (t11 + 4);
    t25 = (t14 + 4);
    t6 = *((unsigned int *)t11);
    t7 = *((unsigned int *)t14);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t16);
    t10 = *((unsigned int *)t25);
    t18 = (t9 ^ t10);
    t19 = (t8 | t18);
    t20 = *((unsigned int *)t16);
    t21 = *((unsigned int *)t25);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB50;

LAB47:    if (t22 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t15) = 1;

LAB50:    t32 = (t15 + 4);
    t27 = *((unsigned int *)t32);
    t28 = (~(t27));
    t29 = *((unsigned int *)t15);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng5)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 10, t5, 10, t11, 10);
    t12 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t12, t14, 0, 0, 10, 0LL);

LAB53:    goto LAB19;

LAB17:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 2, 0LL);
    goto LAB19;

LAB21:    xsi_set_current_line(47, ng0);

LAB24:    xsi_set_current_line(48, ng0);
    t5 = ((char*)((ng1)));
    t11 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t11, t5, 0, 0, 10, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB23;

LAB28:    t25 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(53, ng0);

LAB33:    xsi_set_current_line(54, ng0);
    t32 = ((char*)((ng5)));
    t33 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 2, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 10, 0LL);
    goto LAB32;

LAB37:    t26 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB38;

LAB39:    xsi_set_current_line(62, ng0);

LAB42:    xsi_set_current_line(63, ng0);
    t33 = ((char*)((ng1)));
    t34 = (t0 + 3088);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 10, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t15, 0, 8);
    t11 = (t15 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 1);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 1);
    *((unsigned int *)t11) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 255U);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 & 255U);
    t16 = (t0 + 2048U);
    t17 = *((char **)t16);
    xsi_vlogtype_concat(t14, 9, 9, 2U, t17, 1, t15, 8);
    t16 = (t0 + 3248);
    xsi_vlogvar_wait_assign_value(t16, t14, 0, 0, 9, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t14, 0, 8);
    t11 = (t14 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t14) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 1);
    t18 = (t10 & 1);
    *((unsigned int *)t11) = t18;
    t16 = (t14 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (~(t19));
    t21 = *((unsigned int *)t14);
    t22 = (t21 & t20);
    t23 = (t22 != 0);
    if (t23 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB45:    goto LAB41;

LAB43:    xsi_set_current_line(65, ng0);
    t17 = ((char*)((ng6)));
    t25 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t25, t17, 0, 0, 2, 0LL);
    goto LAB45;

LAB49:    t26 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(72, ng0);

LAB54:    xsi_set_current_line(73, ng0);
    t33 = (t0 + 3248);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memset(t36, 0, 8);
    t37 = (t36 + 4);
    t38 = (t35 + 4);
    t39 = *((unsigned int *)t35);
    t40 = (t39 >> 0);
    t41 = (t40 & 1);
    *((unsigned int *)t36) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 >> 0);
    t44 = (t43 & 1);
    *((unsigned int *)t37) = t44;
    t45 = (t0 + 2048U);
    t46 = *((char **)t45);
    t48 = *((unsigned int *)t36);
    t49 = *((unsigned int *)t46);
    t50 = (t48 & t49);
    *((unsigned int *)t47) = t50;
    t45 = (t36 + 4);
    t51 = (t46 + 4);
    t52 = (t47 + 4);
    t53 = *((unsigned int *)t45);
    t54 = *((unsigned int *)t51);
    t55 = (t53 | t54);
    *((unsigned int *)t52) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 != 0);
    if (t57 == 1)
        goto LAB55;

LAB56:
LAB57:    t78 = (t0 + 2768);
    xsi_vlogvar_wait_assign_value(t78, t47, 0, 0, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t14, 0, 8);
    t11 = (t14 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 1);
    *((unsigned int *)t14) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 1);
    *((unsigned int *)t11) = t9;
    t10 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t10 & 255U);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 & 255U);
    t16 = (t0 + 2928);
    xsi_vlogvar_wait_assign_value(t16, t14, 0, 0, 8, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t15, 0, 8);
    t11 = (t15 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 1);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t12);
    t9 = (t8 >> 1);
    *((unsigned int *)t11) = t9;
    t10 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t10 & 255U);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 & 255U);
    t16 = (t0 + 2608);
    t17 = (t16 + 56U);
    t25 = *((char **)t17);
    memset(t36, 0, 8);
    t26 = (t36 + 4);
    t32 = (t25 + 4);
    t19 = *((unsigned int *)t25);
    t20 = (t19 >> 0);
    *((unsigned int *)t36) = t20;
    t21 = *((unsigned int *)t32);
    t22 = (t21 >> 0);
    *((unsigned int *)t26) = t22;
    t23 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t23 & 16777215U);
    t24 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t24 & 16777215U);
    xsi_vlogtype_concat(t14, 32, 32, 2U, t36, 24, t15, 8);
    t33 = (t0 + 2608);
    xsi_vlogvar_wait_assign_value(t33, t14, 0, 0, 32, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB53;

LAB55:    t58 = *((unsigned int *)t47);
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t47) = (t58 | t59);
    t60 = (t36 + 4);
    t61 = (t46 + 4);
    t62 = *((unsigned int *)t36);
    t63 = (~(t62));
    t64 = *((unsigned int *)t60);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (~(t66));
    t68 = *((unsigned int *)t61);
    t69 = (~(t68));
    t70 = (t63 & t65);
    t71 = (t67 & t69);
    t72 = (~(t70));
    t73 = (~(t71));
    t74 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t74 & t72);
    t75 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t75 & t73);
    t76 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t76 & t72);
    t77 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t77 & t73);
    goto LAB57;

}


extern void work_m_00000000001264238335_4230982292_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000001264238335_4230982292", "isim/Top_OExp09_IP2MCPU_isim_beh.exe.sim/work/m_00000000001264238335_4230982292.didat");
	xsi_register_executes(pe);
}
