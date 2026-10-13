<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="rsa_modexp_hw" name="rsa_modexp_hls_speed_combo" ideType="classic">
    <includePaths>
        <path name="src_converted_flat_speed_combo"/>
        <path name="../montgomery_converter/include"/>
        <path name="."/>
    </includePaths>
    <files>
        <file name="src_converted_flat_speed_combo/rsa_modexp_hw.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_converted_flat_speed_combo/mont_word.cpp" sc="0" tb="false" cflags="-I../montgomery_converter/include" csimflags="" blackbox="false"/>
        <file name="src_converted_flat_speed_combo/rsa_modexp_hw.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src_converted_flat_speed_combo/mont_word.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="/home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_converted_flat_speed_combo/tb_top.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

