<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="sikep503_kem_enc_hw" name="sikep503_hls_csim_fixed" ideType="classic">
    <includePaths>
        <path name="src"/>
        <path name="src/generic"/>
        <path name="src/random"/>
        <path name="src/sha3"/>
        <path name="."/>
    </includePaths>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <files>
        <file name="src/sha3/fips202.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/random/random.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/generic/fp_generic.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sikep503_kem_enc_hw.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/P503.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sike.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sidh.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/ec_isogeny.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/fpx.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/generic/mpx_iface_tvu_mul.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sha3/fips202.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/random/random.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/api.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/config.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sike.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/sidh.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/ec_isogeny.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/fpx.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/P503_internal.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/tb_top.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

