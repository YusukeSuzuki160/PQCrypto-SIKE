<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="mp_mul_packed" name="mpx_compare" ideType="classic">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="include/mpx_packed.hpp" sc="0" tb="false" cflags="-I./include -I./src /home2/meltpoint/Xilinx/Vivado/2024.2/include/." csimflags="" blackbox="false"/>
        <file name="src/mp_mul_packed.cpp" sc="0" tb="false" cflags="-I./include -I./src /home2/meltpoint/Xilinx/Vivado/2024.2/include/." csimflags="" blackbox="false"/>
        <file name="src/types.hpp" sc="0" tb="false" cflags="-I./include -I./src /home2/meltpoint/Xilinx/Vivado/2024.2/include/." csimflags="" blackbox="false"/>
        <file name="src/mp_mul_orig.cpp" sc="0" tb="false" cflags="-I./include -I./src /home2/meltpoint/Xilinx/Vivado/2024.2/include/." csimflags="" blackbox="false"/>
        <file name="../../tb/tb_mul_packed.cpp" sc="0" tb="1" cflags="-I../../include -I../../src /home2/meltpoint/Xilinx/Vivado/2024.2/include/. -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../tb/tb_mul_orig.cpp" sc="0" tb="1" cflags="-I../../include -I../../src /home2/meltpoint/Xilinx/Vivado/2024.2/include/. -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="orig" status=""/>
        <solution name="packed" status=""/>
    </solutions>
</AutoPilot:project>

