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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000003003270080_0848181053_init();
    work_m_00000000002361946809_3257900433_init();
    work_m_00000000003647265936_0571264860_init();
    work_m_00000000002027220810_2885957937_init();
    work_m_00000000002608045778_3476153904_init();
    work_m_00000000000172254337_2209281449_init();
    work_m_00000000001436182272_1871713313_init();
    work_m_00000000003963861228_3102942795_init();
    work_m_00000000001981608515_0426247469_init();
    work_m_00000000002165145733_2725559894_init();
    work_m_00000000000823279913_1137345619_init();
    work_m_00000000003077032594_2931428527_init();
    work_m_00000000003494238128_4285511994_init();
    work_m_00000000000202277478_3055304279_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    unisims_ver_m_00000000003510477262_2316096324_init();
    work_m_00000000003731984129_1866556871_init();
    xilinxcorelib_ver_m_00000000001358910285_2343122980_init();
    xilinxcorelib_ver_m_00000000001687936702_2843080771_init();
    xilinxcorelib_ver_m_00000000000277421008_2947863841_init();
    xilinxcorelib_ver_m_00000000001603977570_2989700712_init();
    work_m_00000000000403262735_1948799799_init();
    work_m_00000000004001671522_3343995150_init();
    work_m_00000000001264238335_4230982292_init();
    work_m_00000000000356665217_1056728154_init();
    work_m_00000000003324902529_2439024403_init();
    work_m_00000000004194856048_0098775010_init();
    work_m_00000000001126996798_1911080150_init();
    work_m_00000000001028554203_2530755923_init();
    unisims_ver_m_00000000003149700083_1668249201_init();
    unisims_ver_m_00000000001762375489_3501834183_init();
    unisims_ver_m_00000000002549801008_4245414866_init();
    unisims_ver_m_00000000001162476414_1323117156_init();
    unisims_ver_m_00000000002123152668_0970595058_init();
    work_m_00000000002389936256_2264379565_init();
    work_m_00000000002554021975_1019978366_init();
    work_m_00000000000830335044_2373735517_init();
    work_m_00000000000085510608_2797238008_init();
    work_m_00000000001126996798_1412047278_init();
    work_m_00000000003560318927_4257133030_init();
    work_m_00000000004134477491_1069848932_init();
    work_m_00000000001378423291_0219727411_init();
    work_m_00000000002273492592_4210814909_init();
    work_m_00000000001658305765_4209322339_init();
    work_m_00000000001080238087_1530106957_init();
    work_m_00000000001425311248_2451809957_init();
    work_m_00000000003696137203_2837592228_init();
    unisims_ver_m_00000000003927721830_1593237687_init();
    unisims_ver_m_00000000003317509437_1759035934_init();
    work_m_00000000000471345610_3045684728_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000471345610_3045684728");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
