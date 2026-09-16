<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="sikep503_kem_enc_hw" name="sikep503_hls_montcsa_shared" ideType="classic">
    <includePaths>
        <path name="src_montcsa"/>
        <path name="src_montcsa/generic"/>
        <path name="src_montcsa/random"/>
        <path name="src_montcsa/sha3"/>
        <path name="../montgomery_converter/include"/>
        <path name="."/>
    </includePaths>
    <files>
        <file name="src_montcsa/sha3/fips202.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/random/random.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/generic/fp_generic.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/sikep503_kem_enc_hw.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/P503.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/sike.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/sidh.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/ec_isogeny.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/fpx.cpp" sc="0" tb="false" cflags="-I../montgomery_converter/include" csimflags="" blackbox="false"/>
        <file name="src_montcsa/generic/mpx_iface_tvu_mul.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/sha3/fips202.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/random/random.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/api.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/config.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/sike.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/sidh.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/ec_isogeny.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/fpx.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_montcsa/P503_internal.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

