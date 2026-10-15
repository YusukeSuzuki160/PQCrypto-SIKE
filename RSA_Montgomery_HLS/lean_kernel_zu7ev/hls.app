<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="kernel_top" name="lean_kernel_zu7ev" ideType="classic">
    <includePaths>
        <path name="src_lean_kernel_only"/>
        <path name="../montgomery_converter/include"/>
        <path name="."/>
    </includePaths>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <files>
        <file name="src_lean_kernel_only/kernel_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_lean_kernel_only/mont_word.cpp" sc="0" tb="false" cflags="-I../montgomery_converter/include" csimflags="" blackbox="false"/>
        <file name="src_lean_kernel_only/kernel_top.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_lean_kernel_only/mont_word.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="/home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_lean_kernel_only/tb_top.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

