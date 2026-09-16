<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="rsa_modexp_hw" name="rsa_modexp_hls_converted_csim" ideType="classic">
    <includePaths>
        <path name="src_converted"/>
        <path name="../montgomery_converter/include"/>
        <path name="."/>
    </includePaths>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <files>
        <file name="src_converted/rsa_modexp_hw.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_converted/mont_word.cpp" sc="0" tb="false" cflags="-I../montgomery_converter/include" csimflags="" blackbox="false"/>
        <file name="src_converted/rsa_modexp_hw.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_converted/mont_word.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="/home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_converted/tb_top.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

