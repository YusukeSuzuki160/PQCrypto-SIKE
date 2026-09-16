<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="sikep503_kem_enc_hw" name="sikep503_hls_csim_montcsa_flat" ideType="classic">
    <includePaths>
        <path name="src_montcsa_flat"/>
        <path name="src_montcsa_flat/generic"/>
        <path name="src_montcsa_flat/random"/>
        <path name="src_montcsa_flat/sha3"/>
        <path name="../montgomery_converter/include"/>
        <path name="."/>
    </includePaths>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
    <files>
        <file name="src_montcsa_flat/sha3/fips202.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/random/random.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/generic/fp_generic.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/sikep503_kem_enc_hw.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/P503.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/sike.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/sidh.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/ec_isogeny.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/fpx.cpp" sc="0" tb="false" cflags="-I../montgomery_converter/include" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/generic/mpx_iface_tvu_mul.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/sha3/fips202.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/random/random.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/api.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/config.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/sike.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/sidh.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/ec_isogeny.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/fpx.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa_flat/P503_internal.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="/home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src_montcsa_flat/tb_top.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

