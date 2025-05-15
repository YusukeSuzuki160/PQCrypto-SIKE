<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="sikep503_hls" ideType="classic" top="sikep503_kem_enc_hw">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <files>
        <file name="src/sha3/keccakf1600.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sha3/fips202.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/random/random.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/generic/fp_sqr.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/generic/fp_mul.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/generic/fp_generic.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sike.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sidh.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/fpx.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/ec_isogeny.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/P503.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="/mnt/data/SIKEp503_HLS/src" sc="0" tb="false" cflags="-std=c++17" csimflags="" blackbox="false"/>
        <file name="../../src/tb_top.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../src/sikep503_kem_enc_tb.cpp" sc="0" tb="1" cflags="-std=c++17 -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

