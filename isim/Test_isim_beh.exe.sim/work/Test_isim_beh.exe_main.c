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
    unisims_ver_m_00000000001946988858_2297623829_init();
    unisims_ver_m_00000000004091665089_2939121799_init();
    unisims_ver_m_00000000003084551676_1484259844_init();
    unisims_ver_m_00000000003266096158_2593380106_init();
    work_m_00000000004234412580_1069848932_init();
    work_m_00000000000580240232_2512015466_init();
    work_m_00000000002055613085_0837667775_init();
    work_m_00000000001099403456_2640816389_init();
    work_m_00000000000745077655_3902597552_init();
    work_m_00000000001853633463_3299312940_init();
    work_m_00000000000179753502_1259516288_init();
    work_m_00000000000096081252_3597375865_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000096081252_3597375865");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}