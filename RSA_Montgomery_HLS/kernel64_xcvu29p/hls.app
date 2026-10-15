<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="kernel_top" name="kernel64_xcvu29p" ideType="classic">
    <includePaths>
        <path name="src_mult_kernel_64"/>
        <path name="../montgomery_converter/include"/>
        <path name="."/>
    </includePaths>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <files>
        <file name="src_mult_kernel_64/kernel_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_mult_kernel_64/mont_word.cpp" sc="0" tb="false" cflags="-I../montgomery_converter/include" csimflags="" blackbox="false"/>
        <file name="src_mult_kernel_64/kernel_top.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_mult_kernel_64/mont_word.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="/home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_mult_kernel_64/tb_top.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

