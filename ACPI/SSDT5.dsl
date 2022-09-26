{
    External (_SB_.DTS1, UnknownObj)
    External (_SB_.DTS2, UnknownObj)
    External (_SB_.DTS3, UnknownObj)
    External (_SB_.DTS4, UnknownObj)
    External (_SB_.PDTS, UnknownObj)
    External (_TZ_.TZ00._TMP, UnknownObj)
    External (PAMT, UnknownObj)
    External (TSDB, UnknownObj)


    0024: A0 46 06 00 15 5C 2E 5F 53 42 5F 44 54 53 31 00  // .F...\._SB_DTS1.
    0034: 00 15 5C 2E 5F 53 42 5F 44 54 53 32 00 00 15 5C  // ..\._SB_DTS2...\
    0044: 2E 5F 53 42 5F 44 54 53 33 00 00 15 5C 2E 5F 53  // ._SB_DTS3...\._S
    0054: 42 5F 44 54 53 34 00 00 15 5C 2E 5F 53 42 5F 50  // B_DTS4...\._SB_P
    0064: 44 54 53 00 00 15 5C 2F 03 5F 54 5A 5F 54 5A 30  // DTS...\/._TZ_TZ0
    0074: 30 5F 54 4D 50 00 00 15 5C 50 41 4D 54 00 00 15  // 0_TMP...\PAMT...
    0084: 5C 54 53 44 42 00 00                             // \TSDB..

    Scope (\_SB)
    {

    008B: 10 43 BA 5C 5F 53 42 5F                          // .C.\_SB_

        Device (PTID)
        {

    0093: 5B 82 4A B9 50 54 49 44                          // [.J.PTID

            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID

    009B: 08 5F 48 49 44 0C 25 D4 34 0E                    // ._HID.%.4.

            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID

    00A5: 08 5F 43 49 44 0C 41 D0 0C 02                    // ._CID.A...

            Name (IVER, 0x00030000)

    00AF: 08 49 56 45 52 0C 00 00 03 00                    // .IVER.....

            Name (_STA, 0x0F)  // _STA: Status

    00B9: 08 5F 53 54 41 0A 0F                             // ._STA..

            Method (TSDL, 0, NotSerialized)
            {

    00C0: 14 18 54 53 44 4C 00                             // ..TSDL.

                If ((TSDB == One))
                {

    00C7: A0 0C 93 54 53 44 42 01                          // ...TSDB.

                    Return (TSD2) /* \_SB_.PTID.TSD2 */
                }


    00CF: A4 54 53 44 32                                   // .TSD2

                Return (TSD1) /* \_SB_.PTID.TSD1 */
            }


    00D4: A4 54 53 44 31                                   // .TSD1

            Name (TSD1, 
    00D9: 08 54 53 44 31                                   // .TSD1

Package (0x26)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "DIMM0_hotspot_U4C1", 
                0x03, 
                "DIMM1_hotspot_Q4D1", 
                0x03, 
                "IMVP_conn_Q7C1", 
                0x03, 
                "board_hotspot1_U3G3", 
                0x03, 
                "board_hotspot2_Q3G1", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x03, 
                "SDRAM_hotspot_RT5B1", 
                0x03, 
                "NGFF_slot_RT6G1", 
                0x03, 
                "IMVP_conn_RT7D1", 
                0x03, 
                "board_hotspot3_RT8F1"
            })

    00DE: 12 48 19 26 00 0D 43 50 55 20 43 6F 72 65 20 30  // .H.&..CPU Core 0
    00EE: 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20  //  DTS...CPU Core 
    00FE: 31 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65  // 1 DTS...CPU Core
    010E: 20 32 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72  //  2 DTS...CPU Cor
    011E: 65 20 33 20 44 54 53 00 00 0D 43 50 55 20 43 6F  // e 3 DTS...CPU Co
    012E: 72 65 20 50 61 63 6B 61 67 65 20 44 54 53 00 0A  // re Package DTS..
    013E: 03 0D 44 49 4D 4D 30 5F 68 6F 74 73 70 6F 74 5F  // ..DIMM0_hotspot_
    014E: 55 34 43 31 00 0A 03 0D 44 49 4D 4D 31 5F 68 6F  // U4C1....DIMM1_ho
    015E: 74 73 70 6F 74 5F 51 34 44 31 00 0A 03 0D 49 4D  // tspot_Q4D1....IM
    016E: 56 50 5F 63 6F 6E 6E 5F 51 37 43 31 00 0A 03 0D  // VP_conn_Q7C1....
    017E: 62 6F 61 72 64 5F 68 6F 74 73 70 6F 74 31 5F 55  // board_hotspot1_U
    018E: 33 47 33 00 0A 03 0D 62 6F 61 72 64 5F 68 6F 74  // 3G3....board_hot
    019E: 73 70 6F 74 32 5F 51 33 47 31 00 00 0D 43 50 55  // spot2_Q3G1...CPU
    01AE: 20 50 61 63 6B 61 67 65 20 54 65 6D 70 65 72 61  //  Package Tempera
    01BE: 74 75 72 65 00 0A 05 0D 50 43 48 20 44 54 53 20  // ture....PCH DTS 
    01CE: 54 65 6D 70 65 72 61 74 75 72 65 20 66 72 6F 6D  // Temperature from
    01DE: 20 50 43 48 00 00 0D 43 50 55 20 50 45 43 49 20  //  PCH...CPU PECI 
    01EE: 72 65 61 64 69 6E 67 00 0A 05 0D 53 41 20 44 54  // reading....SA DT
    01FE: 53 20 54 65 6D 70 65 72 61 74 75 72 65 20 66 72  // S Temperature fr
    020E: 6F 6D 20 50 43 48 00 0A 02 0D 54 5A 30 30 20 5F  // om PCH....TZ00 _
    021E: 54 4D 50 00 0A 03 0D 53 44 52 41 4D 5F 68 6F 74  // TMP....SDRAM_hot
    022E: 73 70 6F 74 5F 52 54 35 42 31 00 0A 03 0D 4E 47  // spot_RT5B1....NG
    023E: 46 46 5F 73 6C 6F 74 5F 52 54 36 47 31 00 0A 03  // FF_slot_RT6G1...
    024E: 0D 49 4D 56 50 5F 63 6F 6E 6E 5F 52 54 37 44 31  // .IMVP_conn_RT7D1
    025E: 00 0A 03 0D 62 6F 61 72 64 5F 68 6F 74 73 70 6F  // ....board_hotspo
    026E: 74 33 5F 52 54 38 46 31 00                       // t3_RT8F1.

            Name (TSD2, 
    0277: 08 54 53 44 32                                   // .TSD2

Package (0x26)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "A-Skin Hotspot U21", 
                0x03, 
                "A-Skin Hotspot U21 IR", 
                0x03, 
                "B-Skin Hotspot U1", 
                0x03, 
                "B-Skin Hotspot U1 IR", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TZ00 _TMP", 
                0x03, 
                "SoC VR Thermsitor RT11", 
                0x03, 
                "Memory Thermistor RT9", 
                0x03, 
                "GNSS Board Ambient Thermistor R4", 
                0x03, 
                "System VR Thermistor RT10", 
                0x03, 
                "A-Skin MipiCam Thermistor RT8"
            })

    027C: 12 48 1C 26 00 0D 43 50 55 20 43 6F 72 65 20 30  // .H.&..CPU Core 0
    028C: 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65 20  //  DTS...CPU Core 
    029C: 31 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72 65  // 1 DTS...CPU Core
    02AC: 20 32 20 44 54 53 00 00 0D 43 50 55 20 43 6F 72  //  2 DTS...CPU Cor
    02BC: 65 20 33 20 44 54 53 00 00 0D 43 50 55 20 43 6F  // e 3 DTS...CPU Co
    02CC: 72 65 20 50 61 63 6B 61 67 65 20 44 54 53 00 0A  // re Package DTS..
    02DC: 03 0D 41 2D 53 6B 69 6E 20 48 6F 74 73 70 6F 74  // ..A-Skin Hotspot
    02EC: 20 55 32 31 00 0A 03 0D 41 2D 53 6B 69 6E 20 48  //  U21....A-Skin H
    02FC: 6F 74 73 70 6F 74 20 55 32 31 20 49 52 00 0A 03  // otspot U21 IR...
    030C: 0D 42 2D 53 6B 69 6E 20 48 6F 74 73 70 6F 74 20  // .B-Skin Hotspot 
    031C: 55 31 00 0A 03 0D 42 2D 53 6B 69 6E 20 48 6F 74  // U1....B-Skin Hot
    032C: 73 70 6F 74 20 55 31 20 49 52 00 00 0D 43 50 55  // spot U1 IR...CPU
    033C: 20 50 61 63 6B 61 67 65 20 54 65 6D 70 65 72 61  //  Package Tempera
    034C: 74 75 72 65 00 0A 05 0D 50 43 48 20 44 54 53 20  // ture....PCH DTS 
    035C: 54 65 6D 70 65 72 61 74 75 72 65 20 66 72 6F 6D  // Temperature from
    036C: 20 50 43 48 00 00 0D 43 50 55 20 50 45 43 49 20  //  PCH...CPU PECI 
    037C: 72 65 61 64 69 6E 67 00 0A 05 0D 53 41 20 44 54  // reading....SA DT
    038C: 53 20 54 65 6D 70 65 72 61 74 75 72 65 20 66 72  // S Temperature fr
    039C: 6F 6D 20 50 43 48 00 0A 02 0D 54 5A 30 30 20 5F  // om PCH....TZ00 _
    03AC: 54 4D 50 00 0A 03 0D 53 6F 43 20 56 52 20 54 68  // TMP....SoC VR Th
    03BC: 65 72 6D 73 69 74 6F 72 20 52 54 31 31 00 0A 03  // ermsitor RT11...
    03CC: 0D 4D 65 6D 6F 72 79 20 54 68 65 72 6D 69 73 74  // .Memory Thermist
    03DC: 6F 72 20 52 54 39 00 0A 03 0D 47 4E 53 53 20 42  // or RT9....GNSS B
    03EC: 6F 61 72 64 20 41 6D 62 69 65 6E 74 20 54 68 65  // oard Ambient The
    03FC: 72 6D 69 73 74 6F 72 20 52 34 00 0A 03 0D 53 79  // rmistor R4....Sy
    040C: 73 74 65 6D 20 56 52 20 54 68 65 72 6D 69 73 74  // stem VR Thermist
    041C: 6F 72 20 52 54 31 30 00 0A 03 0D 41 2D 53 6B 69  // or RT10....A-Ski
    042C: 6E 20 4D 69 70 69 43 61 6D 20 54 68 65 72 6D 69  // n MipiCam Thermi
    043C: 73 74 6F 72 20 52 54 38 00                       // stor RT8.

            Name (PSDL, 
    0445: 08 50 53 44 4C                                   // .PSDL

Package (0x26)
            {
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Brick Power cW(100ths)", 
                0x0B, 
                "Battery Discharge Power cW(100ths)", 
                0x0B, 
                "Platform Average Power (mW)", 
                0x0B, 
                "Brick Average Power cW(0.01)", 
                0x0B, 
                "Battery Discharge Average Power cW(0.01)", 
                0x0C, 
                "Battery 1 Design Capacity (mWh)", 
                0x0C, 
                "Battery 1 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 1 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 1 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery 2 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 2 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 2 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery Pack 1 maximum power (mW)", 
                0x0C, 
                "Battery Pack 2 maximum power (mW)"
            })

    044A: 12 4C 2E 26 0A 0B 0D 50 6C 61 74 66 6F 72 6D 20  // .L.&...Platform 
    045A: 50 6F 77 65 72 20 28 6D 57 29 00 0A 0B 0D 42 72  // Power (mW)....Br
    046A: 69 63 6B 20 50 6F 77 65 72 20 63 57 28 31 30 30  // ick Power cW(100
    047A: 74 68 73 29 00 0A 0B 0D 42 61 74 74 65 72 79 20  // ths)....Battery 
    048A: 44 69 73 63 68 61 72 67 65 20 50 6F 77 65 72 20  // Discharge Power 
    049A: 63 57 28 31 30 30 74 68 73 29 00 0A 0B 0D 50 6C  // cW(100ths)....Pl
    04AA: 61 74 66 6F 72 6D 20 41 76 65 72 61 67 65 20 50  // atform Average P
    04BA: 6F 77 65 72 20 28 6D 57 29 00 0A 0B 0D 42 72 69  // ower (mW)....Bri
    04CA: 63 6B 20 41 76 65 72 61 67 65 20 50 6F 77 65 72  // ck Average Power
    04DA: 20 63 57 28 30 2E 30 31 29 00 0A 0B 0D 42 61 74  //  cW(0.01)....Bat
    04EA: 74 65 72 79 20 44 69 73 63 68 61 72 67 65 20 41  // tery Discharge A
    04FA: 76 65 72 61 67 65 20 50 6F 77 65 72 20 63 57 28  // verage Power cW(
    050A: 30 2E 30 31 29 00 0A 0C 0D 42 61 74 74 65 72 79  // 0.01)....Battery
    051A: 20 31 20 44 65 73 69 67 6E 20 43 61 70 61 63 69  //  1 Design Capaci
    052A: 74 79 20 28 6D 57 68 29 00 0A 0C 0D 42 61 74 74  // ty (mWh)....Batt
    053A: 65 72 79 20 31 20 52 65 6D 61 69 6E 69 6E 67 20  // ery 1 Remaining 
    054A: 43 61 70 61 63 69 74 79 20 28 6D 57 68 29 00 0A  // Capacity (mWh)..
    055A: 0C 0D 42 61 74 74 65 72 79 20 31 20 46 75 6C 6C  // ..Battery 1 Full
    056A: 20 43 68 61 72 67 65 20 43 61 70 61 63 69 74 79  //  Charge Capacity
    057A: 20 28 6D 57 68 29 00 0A 0C 0D 42 61 74 74 65 72  //  (mWh)....Batter
    058A: 79 20 31 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74  // y 1 Full Resolut
    059A: 69 6F 6E 20 56 6F 6C 74 61 67 65 20 28 6D 56 29  // ion Voltage (mV)
    05AA: 00 0A 0C 0D 42 61 74 74 65 72 79 20 31 20 46 75  // ....Battery 1 Fu
    05BA: 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E 20 44 69  // ll Resolution Di
    05CA: 73 63 68 61 72 67 65 20 43 75 72 72 65 6E 74 20  // scharge Current 
    05DA: 28 6D 41 29 00 0A 0C 0D 42 61 74 74 65 72 79 20  // (mA)....Battery 
    05EA: 31 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F  // 1 Full Resolutio
    05FA: 6E 20 43 68 61 72 67 65 20 43 75 72 72 65 6E 74  // n Charge Current
    060A: 20 28 6D 41 29 00 0A 0C 0D 42 61 74 74 65 72 79  //  (mA)....Battery
    061A: 20 32 20 52 65 6D 61 69 6E 69 6E 67 20 43 61 70  //  2 Remaining Cap
    062A: 61 63 69 74 79 20 28 6D 57 68 29 00 0A 0C 0D 42  // acity (mWh)....B
    063A: 61 74 74 65 72 79 20 32 20 46 75 6C 6C 20 43 68  // attery 2 Full Ch
    064A: 61 72 67 65 20 43 61 70 61 63 69 74 79 20 28 6D  // arge Capacity (m
    065A: 57 68 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 32  // Wh)....Battery 2
    066A: 20 46 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E  //  Full Resolution
    067A: 20 56 6F 6C 74 61 67 65 20 28 6D 56 29 00 0A 0C  //  Voltage (mV)...
    068A: 0D 42 61 74 74 65 72 79 20 32 20 46 75 6C 6C 20  // .Battery 2 Full 
    069A: 52 65 73 6F 6C 75 74 69 6F 6E 20 44 69 73 63 68  // Resolution Disch
    06AA: 61 72 67 65 20 43 75 72 72 65 6E 74 20 28 6D 41  // arge Current (mA
    06BA: 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 32 20 46  // )....Battery 2 F
    06CA: 75 6C 6C 20 52 65 73 6F 6C 75 74 69 6F 6E 20 43  // ull Resolution C
    06DA: 68 61 72 67 65 20 43 75 72 72 65 6E 74 20 28 6D  // harge Current (m
    06EA: 41 29 00 0A 0C 0D 42 61 74 74 65 72 79 20 50 61  // A)....Battery Pa
    06FA: 63 6B 20 31 20 6D 61 78 69 6D 75 6D 20 70 6F 77  // ck 1 maximum pow
    070A: 65 72 20 28 6D 57 29 00 0A 0C 0D 42 61 74 74 65  // er (mW)....Batte
    071A: 72 79 20 50 61 63 6B 20 32 20 6D 61 78 69 6D 75  // ry Pack 2 maximu
    072A: 6D 20 70 6F 77 65 72 20 28 6D 57 29 00           // m power (mW).

            Method (OSDL, 0, NotSerialized)
            {

    0737: 14 18 4F 53 44 4C 00                             // ..OSDL.

                If ((TSDB == One))
                {

    073E: A0 0C 93 54 53 44 42 01                          // ...TSDB.

                    Return (OSD2) /* \_SB_.PTID.OSD2 */
                }


    0746: A4 4F 53 44 32                                   // .OSD2

                Return (OSD1) /* \_SB_.PTID.OSD1 */
            }


    074B: A4 4F 53 44 31                                   // .OSD1

            Name (OSD1, 
    0750: 08 4F 53 44 31                                   // .OSD1

Package (0x15)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW"
            })

    0755: 12 43 0A 15 0A 04 0D 43 50 55 20 46 61 6E 20 44  // .C.....CPU Fan D
    0765: 75 74 79 20 43 79 63 6C 65 00 0D 52 41 57 00 0A  // uty Cycle..RAW..
    0775: 04 0D 43 50 55 20 46 61 6E 20 23 31 20 53 70 65  // ..CPU Fan #1 Spe
    0785: 65 64 00 0D 52 50 4D 00 0A 03 0D 53 6B 69 6E 20  // ed..RPM....Skin 
    0795: 54 65 6D 70 20 30 00 0D 52 41 57 00 0A 03 0D 54  // Temp 0..RAW....T
    07A5: 68 65 72 6D 69 73 74 6F 72 20 31 20 00 0D 52 41  // hermistor 1 ..RA
    07B5: 57 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F 72 20  // W....Thermistor 
    07C5: 32 20 00 0D 52 41 57 00 0A 03 0D 54 68 65 72 6D  // 2 ..RAW....Therm
    07D5: 69 73 74 6F 72 20 33 20 00 0D 52 41 57 00 0A 03  // istor 3 ..RAW...
    07E5: 0D 54 68 65 72 6D 69 73 74 6F 72 20 34 20 00 0D  // .Thermistor 4 ..
    07F5: 52 41 57 00                                      // RAW.

            Name (OSD2, 
    07F9: 08 4F 53 44 32                                   // .OSD2

Package (0x18)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW", 
                0x03, 
                "Thermistor 3 ", 
                "RAW", 
                0x03, 
                "Thermistor 4 ", 
                "RAW", 
                0x03, 
                "Thermistor 5 ", 
                "RAW"
            })

    07FE: 12 49 0B 18 0A 04 0D 43 50 55 20 46 61 6E 20 44  // .I.....CPU Fan D
    080E: 75 74 79 20 43 79 63 6C 65 00 0D 52 41 57 00 0A  // uty Cycle..RAW..
    081E: 04 0D 43 50 55 20 46 61 6E 20 23 31 20 53 70 65  // ..CPU Fan #1 Spe
    082E: 65 64 00 0D 52 50 4D 00 0A 03 0D 53 6B 69 6E 20  // ed..RPM....Skin 
    083E: 54 65 6D 70 20 30 00 0D 52 41 57 00 0A 03 0D 54  // Temp 0..RAW....T
    084E: 68 65 72 6D 69 73 74 6F 72 20 31 20 00 0D 52 41  // hermistor 1 ..RA
    085E: 57 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F 72 20  // W....Thermistor 
    086E: 32 20 00 0D 52 41 57 00 0A 03 0D 54 68 65 72 6D  // 2 ..RAW....Therm
    087E: 69 73 74 6F 72 20 33 20 00 0D 52 41 57 00 0A 03  // istor 3 ..RAW...
    088E: 0D 54 68 65 72 6D 69 73 74 6F 72 20 34 20 00 0D  // .Thermistor 4 ..
    089E: 52 41 57 00 0A 03 0D 54 68 65 72 6D 69 73 74 6F  // RAW....Thermisto
    08AE: 72 20 35 20 00 0D 52 41 57 00                    // r 5 ..RAW.

            Method (TSDD, 0, Serialized)
            {

    08B8: 14 43 23 54 53 44 44 08                          // .C#TSDD.

                If ((TSDB == One))
                {

    08C0: A0 47 11 93 54 53 44 42 01                       // .G..TSDB.

                    Name (TMPX, 
    08C9: 08 54 4D 50 58                                   // .TMPX

Package (0x13)
                    {
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000
                    })
                    TMPX [Zero] = 
    08CE: 12 42 06 13 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .B..............
    08DE: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    08EE: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    08FE: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    090E: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    091E: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    092E: 00 00 80 70                                      // ...p

((\_SB.DTS1 * 0x0A) + 0x0AAC)
                    TMPX [One] = 
    0932: 72 77 5C 2E 5F 53 42 5F 44 54 53 31 0A 0A 00 0B  // rw\._SB_DTS1....
    0942: AC 0A 00 88 54 4D 50 58 00 00 70                 // ....TMPX..p

((\_SB.DTS2 * 0x0A) + 0x0AAC)
                    TMPX [0x02] = 
    094D: 72 77 5C 2E 5F 53 42 5F 44 54 53 32 0A 0A 00 0B  // rw\._SB_DTS2....
    095D: AC 0A 00 88 54 4D 50 58 01 00 70                 // ....TMPX..p

((\_SB.DTS3 * 0x0A) + 0x0AAC)
                    TMPX [0x03] = 
    0968: 72 77 5C 2E 5F 53 42 5F 44 54 53 33 0A 0A 00 0B  // rw\._SB_DTS3....
    0978: AC 0A 00 88 54 4D 50 58 0A 02 00 70              // ....TMPX...p

((\_SB.DTS4 * 0x0A) + 0x0AAC)
                    TMPX [0x04] = 
    0984: 72 77 5C 2E 5F 53 42 5F 44 54 53 34 0A 0A 00 0B  // rw\._SB_DTS4....
    0994: AC 0A 00 88 54 4D 50 58 0A 03 00 70              // ....TMPX...p

((\_SB.PDTS * 0x0A) + 0x0AAC)
                    TMPX [0x0D] = \_TZ.TZ00._TMP /* External reference */

    09A0: 72 77 5C 2E 5F 53 42 5F 50 44 54 53 0A 0A 00 0B  // rw\._SB_PDTS....
    09B0: AC 0A 00 88 54 4D 50 58 0A 04 00 70 5C 2F 03 5F  // ....TMPX...p\/._
    09C0: 54 5A 5F 54 5A 30 30 5F 54 4D 50 88 54 4D 50 58  // TZ_TZ00_TMP.TMPX
    09D0: 0A 0D 00                                         // ...

                    Return (TMPX) /* \_SB_.PTID.TSDD.TMPX */
                }


    09D3: A4 54 4D 50 58                                   // .TMPX

                Name (TMPV, 
    09D8: 08 54 4D 50 56                                   // .TMPV

Package (0x14)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                TMPV [Zero] = 
    09DD: 12 47 06 14 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .G..............
    09ED: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    09FD: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0A0D: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0A1D: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0A2D: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    0A3D: 00 00 80 0C 00 00 00 80 70                       // ........p

((\_SB.DTS1 * 0x0A) + 0x0AAC)
                TMPV [One] = 
    0A46: 72 77 5C 2E 5F 53 42 5F 44 54 53 31 0A 0A 00 0B  // rw\._SB_DTS1....
    0A56: AC 0A 00 88 54 4D 50 56 00 00 70                 // ....TMPV..p

((\_SB.DTS2 * 0x0A) + 0x0AAC)
                TMPV [0x02] = 
    0A61: 72 77 5C 2E 5F 53 42 5F 44 54 53 32 0A 0A 00 0B  // rw\._SB_DTS2....
    0A71: AC 0A 00 88 54 4D 50 56 01 00 70                 // ....TMPV..p

((\_SB.DTS3 * 0x0A) + 0x0AAC)
                TMPV [0x03] = 
    0A7C: 72 77 5C 2E 5F 53 42 5F 44 54 53 33 0A 0A 00 0B  // rw\._SB_DTS3....
    0A8C: AC 0A 00 88 54 4D 50 56 0A 02 00 70              // ....TMPV...p

((\_SB.DTS4 * 0x0A) + 0x0AAC)
                TMPV [0x04] = 
    0A98: 72 77 5C 2E 5F 53 42 5F 44 54 53 34 0A 0A 00 0B  // rw\._SB_DTS4....
    0AA8: AC 0A 00 88 54 4D 50 56 0A 03 00 70              // ....TMPV...p

((\_SB.PDTS * 0x0A) + 0x0AAC)
                TMPV [0x0E] = \_TZ.TZ00._TMP /* External reference */

    0AB4: 72 77 5C 2E 5F 53 42 5F 50 44 54 53 0A 0A 00 0B  // rw\._SB_PDTS....
    0AC4: AC 0A 00 88 54 4D 50 56 0A 04 00 70 5C 2F 03 5F  // ....TMPV...p\/._
    0AD4: 54 5A 5F 54 5A 30 30 5F 54 4D 50 88 54 4D 50 56  // TZ_TZ00_TMP.TMPV
    0AE4: 0A 0E 00                                         // ...

                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }


    0AE7: A4 54 4D 50 56                                   // .TMPV

            Method (PSDD, 0, Serialized)
            {

    0AEC: 14 44 07 50 53 44 44 08                          // .D.PSDD.

                Name (PWRV, 
    0AF4: 08 50 57 52 56                                   // .PWRV

Package (0x13)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })

    0AF9: 12 42 06 13 0C 00 00 00 80 0C 00 00 00 80 0C 00  // .B..............
    0B09: 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00  // ................
    0B19: 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00  // ................
    0B29: 80 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80  // ................
    0B39: 0C 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C  // ................
    0B49: 00 00 00 80 0C 00 00 00 80 0C 00 00 00 80 0C 00  // ................
    0B59: 00 00 80                                         // ...

                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }


    0B5C: A4 50 57 52 56                                   // .PWRV

            Method (OSDD, 0, Serialized)
            {

    0B61: 14 0A 4F 53 44 44 08                             // ..OSDD.

                Return (
    0B68: A4                                               // .

Package (0x00) {})
            }


    0B69: 12 02 00                                         // ...

            Method (SDSP, 0, NotSerialized)
            {

    0B6C: 14 09 53 44 53 50 00                             // ..SDSP.

                Return (0x0A)
            }


    0B73: A4 0A 0A                                         // ...

            Name (PADA, 
    0B76: 08 50 41 44 41                                   // .PADA

Package (0x0A)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x1A, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })

    0B7B: 12 2D 0A 01 0C FF FF FF FF 0C FF FF FF FF 0A 1A  // .-..............
    0B8B: 0C FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF 0C  // ................
    0B9B: FF FF FF FF 0C FF FF FF FF 0C FF FF FF FF        // ..............

            Name (PADD, 
    0BA9: 08 50 41 44 44                                   // .PADD

Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })

    0BAE: 12 18 0A 0A 02 0B A4 06 0B A0 06 0A 1A 0A 62 0A  // ..............b.
    0BBE: 63 0A 60 0A 61 0A 65 0A 64                       // c.`.a.e.d

            Method (PADT, 0, NotSerialized)
            {

    0BC7: 14 16 50 41 44 54 00                             // ..PADT.

                If (PAMT)
                {

    0BCE: A0 0A 50 41 4D 54                                // ..PAMT

                    Return (PADA) /* \_SB_.PTID.PADA */
                }


    0BD4: A4 50 41 44 41                                   // .PADA

                Return (PADD) /* \_SB_.PTID.PADD */
            }


    0BD9: A4 50 41 44 44                                   // .PADD

            Method (RPMD, 0, Serialized)
            {

    0BDE: 14 14 52 50 4D 44 08                             // ..RPMD.

                Name (MTMP, 
    0BE5: 08 4D 54 4D 50                                   // .MTMP

Buffer (0x1A) {})

    0BEA: 11 03 0A 1A                                      // ....

                Return (MTMP) /* \_SB_.PTID.RPMD.MTMP */
            }


    0BEE: A4 4D 54 4D 50                                   // .MTMP

            Method (WPMD, 1, NotSerialized)
            {

    0BF3: 14 16 57 50 4D 44 01                             // ..WPMD.

                If (
    0BFA: A0 0D 92                                         // ...

(SizeOf (Arg0) != 0x1A))
                {

    0BFD: 93 87 68 0A 1A                                   // ..h..

                    Return (0xFFFFFFFF)
                }


    0C02: A4 0C FF FF FF FF                                // ......

                Return (Zero)
            }


    0C08: A4 00                                            // ..

            Method (ISPC, 0, NotSerialized)
            {

    0C0A: 14 08 49 53 50 43 00                             // ..ISPC.

                Return (Zero)
            }


    0C11: A4 00                                            // ..

            Method (ENPC, 0, NotSerialized)
            {

    0C13: 14 08 45 4E 50 43 00                             // ..ENPC.

                Return (Zero)
            }


    0C1A: A4 00                                            // ..

            Method (RPCS, 0, NotSerialized)
            {
            }


    0C1C: 14 06 52 50 43 53 00                             // ..RPCS.

            Method (RPEC, 0, NotSerialized)
            {
                Local0 = Zero

    0C23: 14 0B 52 50 45 43 00 70 00 60                    // ..RPEC.p.`

                Return (Local0)
            }
        }
    }
}



Table Header:
Table Body (Length 0xC2F)
