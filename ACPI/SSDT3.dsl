{
    Scope (\_SB)
    {

    0024: 10 45 43 5C 5F 53 42 5F                          // .EC\_SB_

        Device (TPM)
        {

    002C: 5B 82 4C 42 54 50 4D 5F                          // [.LBTPM_

            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID

    0034: 08 5F 48 49 44 0D 4D 53 46 54 30 31 30 31 00     // ._HID.MSFT0101.

            Name (_STR, 
    0043: 08 5F 53 54 52                                   // ._STR

Unicode ("TPM 2.0 Device"))  // _STR: Description String

    0048: 11 21 0A 1E 54 00 50 00 4D 00 20 00 32 00 2E 00  // .!..T.P.M. .2...
    0058: 30 00 20 00 44 00 65 00 76 00 69 00 63 00 65 00  // 0. .D.e.v.i.c.e.
    0068: 00 00                                            // ..

            Name (_CRS, 
    006A: 08 5F 43 52 53                                   // ._CRS

ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
            })

    006F: 11 11 0A 0E 86 09 00 01 00 00 D4 FE 00 50 00 00  // .............P..
    007F: 79 00                                            // y.

            OperationRegion (SMIP, SystemIO, 0xB2, One)

    0081: 5B 80 53 4D 49 50 01 0A B2 01                    // [.SMIP....

            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }


    008B: 5B 81 0B 53 4D 49 50 01 49 4F 42 32 08           // [..SMIP.IOB2.

            OperationRegion (FHCI, SystemMemory, 0xFED40000, 0x1000)

    0098: 5B 80 46 48 43 49 00 0C 00 00 D4 FE 0B 00 10     // [.FHCI.........

            Field (FHCI, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                HERR,   32, 
                Offset (0x40), 
                CREQ,   32, 
                CSTS,   32, 
                Offset (0x4C), 
                HCMD,   32
            }


    00A7: 5B 81 21 46 48 43 49 00 00 20 48 45 52 52 20 00  // [.!FHCI.. HERR .
    00B7: 40 1C 43 52 45 51 20 43 53 54 53 20 00 20 48 43  // @.CREQ CSTS . HC
    00C7: 4D 44 20                                         // MD 

            OperationRegion (TNVS, SystemMemory, 0x89C44000, 0x26)

    00CA: 5B 80 54 4E 56 53 00 0C 00 40 C4 89 0A 26        // [.TNVS...@...&

            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }


    00D8: 5B 81 3D 54 4E 56 53 00 50 50 49 4E 08 50 50 49  // [.=TNVS.PPIN.PPI
    00E8: 50 20 50 50 52 50 20 50 50 52 51 20 50 50 52 4D  // P PPRP PPRQ PPRM
    00F8: 20 4C 50 50 52 20 46 52 45 54 20 4D 43 49 4E 08  //  LPPR FRET MCIN.
    0108: 4D 43 49 50 20 4D 4F 52 44 20 4D 52 45 54 20     // MCIP MORD MRET 

            Method (PTS, 1, Serialized)
            {

    0117: 14 2E 50 54 53 5F 09                             // ..PTS_.

                If (((Arg0 < 0x06) && 
    011E: A0 25 90 95 68 0A 06                             // .%..h..

(Arg0 > 0x03)))
                {

    0125: 94 68 0A 03                                      // .h..

                    If (!
    0129: A0 1A 92                                         // ...

(MORD & 0x10))
                    {
                        MCIP = 0x02

    012C: 7B 4D 4F 52 44 0A 10 00 70 0A 02 4D 43 49 50     // {MORD...p..MCIP

                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */
                    }
                }


    013B: 70 4D 43 49 4E 49 4F 42 32                       // pMCINIOB2

                Return (Zero)
            }


    0144: A4 00                                            // ..

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    0146: 14 09 5F 53 54 41 00                             // .._STA.

                Return (0x0F)
            }


    014D: A4 0A 0F                                         // ...

            Method (HINF, 3, Serialized)
            {

    0150: 14 4A 05 48 49 4E 46 0B                          // .J.HINF.


    0158: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    015E: A2 47 04 01 70 99 69 00 5F 54 5F 30              // .G..p.i._T_0

                    Case (Zero)
                    {

    016A: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0172: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    0173: 11 03 01 03                                      // ....

                    Case
    0177: A1 2D                                            // .-

 (One)
                    {

    0179: A0 28 93 5F 54 5F 30 01                          // .(._T_0.

                        Name (TPMV, 
    0181: 08 54 50 4D 56                                   // .TPMV

Package (0x02)
                        {
                            One, 

    0186: 12 09 02 01                                      // ....

                            Package (0x02)
                            {
                                One, 
                                0x20
                            }
                        })

    018A: 12 05 02 01 0A 20                                // ..... 

                        If ((_STA () == Zero))
                        {

    0190: A0 0C 93 5F 53 54 41 00                          // ..._STA.

                            Return (
    0198: A4                                               // .

Package (0x01)
                            {
                                Zero
                            })
                        }


    0199: 12 03 01 00                                      // ....

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }

    019D: A4 54 50 4D 56                                   // .TPMV

                    Default
                    {

    01A2: A1 02                                            // ..

                        BreakPoint
                    }


    01A4: CC                                               // .

                }


    01A5: A5                                               // .

                Return (
    01A6: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }


    01A7: 11 03 01 00                                      // ....

            Name (TPM2, 
    01AB: 08 54 50 4D 32                                   // .TPM2

Package (0x02)
            {
                Zero, 
                Zero
            })

    01B0: 12 04 02 00 00                                   // .....

            Name (TPM3, 
    01B5: 08 54 50 4D 33                                   // .TPM3

Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })

    01BA: 12 05 03 00 00 00                                // ......

            Method (TPPI, 3, Serialized)
            {

    01C0: 14 4E 14 54 50 50 49 0B                          // .N.TPPI.


    01C8: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    01CE: A2 4E 13 01 70 99 69 00 5F 54 5F 30              // .N..p.i._T_0

                    Case (Zero)
                    {

    01DA: A0 0E 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    01E2: A4                                               // .

Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }

    01E3: 11 05 0A 02 FF 01                                // ......

                    Case
    01E9: A1 42 12                                         // .B.

 (One)
                    {

    01EC: A0 0D 93 5F 54 5F 30 01                          // ..._T_0.

                        Return ("1.3")
                    }

    01F4: A4 0D 31 2E 33 00                                // ..1.3.

                    Case
    01FA: A1 41 11                                         // .A.

 (0x02)
                    {
                        PPRQ = 
    01FD: A0 27 93 5F 54 5F 30 0A 02 70                    // .'._T_0..p

DerefOf (
    0207: 83                                               // .

Arg2 [Zero])
                        PPIP = 0x02
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */

    0208: 88 6A 00 00 50 50 52 51 70 0A 02 50 50 49 50 70  // .j..PPRQp..PPIPp
    0218: 50 50 49 4E 49 4F 42 32                          // PPINIOB2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    0220: A4 46 52 45 54                                   // .FRET

                    Case
    0225: A1 46 0E                                         // .F.

 (0x03)
                    {
                        TPM2 [One] = PPRQ /* \_SB_.TPM_.PPRQ */

    0228: A0 19 93 5F 54 5F 30 0A 03 70 50 50 52 51 88 54  // ..._T_0..pPPRQ.T
    0238: 50 4D 32 01 00                                   // PM2..

                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }

    023D: A4 54 50 4D 32                                   // .TPM2

                    Case
    0242: A1 49 0C                                         // .I.

 (0x04)
                    {

    0245: A0 0B 93 5F 54 5F 30 0A 04                       // ..._T_0..

                        Return (0x02)
                    }

    024E: A4 0A 02                                         // ...

                    Case
    0251: A1 4A 0B                                         // .J.

 (0x05)
                    {
                        PPIP = 0x05
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        TPM3 [One] = LPPR /* \_SB_.TPM_.LPPR */
                        TPM3 [0x02] = PPRP /* \_SB_.TPM_.PPRP */

    0254: A0 36 93 5F 54 5F 30 0A 05 70 0A 05 50 50 49 50  // .6._T_0..p..PPIP
    0264: 70 50 50 49 4E 49 4F 42 32 70 4C 50 50 52 88 54  // pPPINIOB2pLPPR.T
    0274: 50 4D 33 01 00 70 50 50 52 50 88 54 50 4D 33 0A  // PM3..pPPRP.TPM3.
    0284: 02 00                                            // ..

                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }

    0286: A4 54 50 4D 33                                   // .TPM3

                    Case
    028B: A1 40 08                                         // .@.

 (0x06)
                    {

    028E: A0 0B 93 5F 54 5F 30 0A 06                       // ..._T_0..

                        Return (0x03)
                    }

    0297: A4 0A 03                                         // ...

                    Case
    029A: A1 41 07                                         // .A.

 (0x07)
                    {
                        PPIP = 0x07
                        PPRQ = 
    029D: A0 41 04 93 5F 54 5F 30 0A 07 70 0A 07 50 50 49  // .A.._T_0..p..PPI
    02AD: 50 70                                            // Pp

DerefOf (
    02AF: 83                                               // .

Arg2 [Zero])
                        PPRM = Zero

    02B0: 88 6A 00 00 50 50 52 51 70 00 50 50 52 4D        // .j..PPRQp.PPRM

                        If ((PPRQ == 0x17))
                        {

    02BE: A0 12 93 50 50 52 51 0A 17                       // ...PPRQ..

                            PPRM = 
    02C7: 70                                               // p

DerefOf (
    02C8: 83                                               // .

Arg2 [One])
                        }

                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */

    02C9: 88 6A 01 00 50 50 52 4D 70 50 50 49 4E 49 4F 42  // .j..PPRMpPPINIOB
    02D9: 32                                               // 2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    02DA: A4 46 52 45 54                                   // .FRET

                    Case
    02DF: A1 2C                                            // .,

 (0x08)
                    {
                        PPIP = 0x08
                        PPRQ = 
    02E1: A0 27 93 5F 54 5F 30 0A 08 70 0A 08 50 50 49 50  // .'._T_0..p..PPIP
    02F1: 70                                               // p

DerefOf (
    02F2: 83                                               // .

Arg2 [Zero])
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */

    02F3: 88 6A 00 00 50 50 52 51 70 50 50 49 4E 49 4F 42  // .j..PPRQpPPINIOB
    0303: 32                                               // 2

                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }

    0304: A4 46 52 45 54                                   // .FRET

                    Default
                    {

    0309: A1 02                                            // ..

                        BreakPoint
                    }


    030B: CC                                               // .

                }


    030C: A5                                               // .

                Return (One)
            }


    030D: A4 01                                            // ..

            Method (TMCI, 3, Serialized)
            {

    030F: 14 44 05 54 4D 43 49 0B                          // .D.TMCI.


    0317: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg1))
                {

    031D: A2 44 04 01 70 99 69 00 5F 54 5F 30              // .D..p.i._T_0

                    Case (Zero)
                    {

    0329: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    0331: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    0332: 11 03 01 03                                      // ....

                    Case
    0336: A1 2A                                            // .*

 (One)
                    {
                        MORD = 
    0338: A0 25 93 5F 54 5F 30 01 70                       // .%._T_0.p

DerefOf (
    0341: 83                                               // .

Arg2 [Zero])
                        MCIP = One
                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */

    0342: 88 6A 00 00 4D 4F 52 44 70 01 4D 43 49 50 70 4D  // .j..MORDp.MCIPpM
    0352: 43 49 4E 49 4F 42 32                             // CINIOB2

                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }

    0359: A4 4D 52 45 54                                   // .MRET

                    Default
                    {

    035E: A1 02                                            // ..

                        BreakPoint
                    }


    0360: CC                                               // .

                }


    0361: A5                                               // .

                Return (One)
            }


    0362: A4 01                                            // ..

            Method (TSMI, 3, Serialized)
            {

    0364: 14 48 06 54 53 4D 49 0B                          // .H.TSMI.


    036C: 08 5F 54 5F 30 00                                // ._T_0.

                Name (WTME, Zero)

    0372: 08 57 54 4D 45 00                                // .WTME.

                Switch (ToInteger (Arg1))
                {

    0378: A2 42 05 01 70 99 69 00 5F 54 5F 30              // .B..p.i._T_0

                    Case (Zero)
                    {

    0384: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                        Return (
    038C: A4                                               // .

Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

    038D: 11 03 01 03                                      // ....

                    Case
    0391: A1 38                                            // .8

 (One)
                    {
                        CREQ = One

    0393: A0 33 93 5F 54 5F 30 01 70 01 43 52 45 51        // .3._T_0.p.CREQ

                        While ((
    03A1: A2 1C 90 92                                      // ....

(WTME <= 0xC8) && 
    03A5: 94 57 54 4D 45 0A C8                             // .WTME..


    03AC: 92                                               // .

((CREQ & One) != 
                            Zero)))
                        {
                            Sleep (One)

    03AD: 93 7B 43 52 45 51 01 00 00 5B 22 01              // .{CREQ...[".

                            WTME++
                        }

                        HCMD = 0x02

    03B9: 75 57 54 4D 45 70 0A 02 48 43 4D 44              // uWTMEp..HCMD

                        Return (Zero)
                    }

    03C5: A4 00                                            // ..

                    Default
                    {

    03C7: A1 02                                            // ..

                        BreakPoint
                    }


    03C9: CC                                               // .

                }


    03CA: A5                                               // .

                Return (One)
            }


    03CB: A4 01                                            // ..

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

    03CD: 14 4C 08 5F 44 53 4D 0C                          // .L._DSM.

                If ((Arg0 == 
    03D5: A0 1F 93 68                                      // ...h

ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* Unknown UUID */))
                {

    03D9: 11 13 0A 10 A5 16 8E CF E8 C1 25 4E B7 12 4F 54  // ..........%N..OT
    03E9: A9 67 02 C8                                      // .g..

                    Return (HINF (Arg1, Arg2, Arg3))
                }


    03ED: A4 48 49 4E 46 69 6A 6B                          // .HINFijk

                If ((Arg0 == 
    03F5: A0 1F 93 68                                      // ...h

ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {

    03F9: 11 13 0A 10 A6 FA DD 3D 1B 36 B4 4E A4 24 8D 10  // .......=.6.N.$..
    0409: 08 9D 16 53                                      // ...S

                    Return (TPPI (Arg1, Arg2, Arg3))
                }


    040D: A4 54 50 50 49 69 6A 6B                          // .TPPIijk

                If ((Arg0 == 
    0415: A0 1F 93 68                                      // ...h

ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* Unknown UUID */))
                {

    0419: 11 13 0A 10 ED 54 60 37 13 CC 75 46 90 1C 47 56  // .....T`7..uF..GV
    0429: D7 F2 D4 5D                                      // ...]

                    Return (TMCI (Arg1, Arg2, Arg3))
                }


    042D: A4 54 4D 43 49 69 6A 6B                          // .TMCIijk

                If ((Arg0 == 
    0435: A0 1F 93 68                                      // ...h

ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4") /* Unknown UUID */))
                {

    0439: 11 13 0A 10 AB 6C BF 6B 63 54 14 47 B7 CD F0 20  // .....l.kcT.G... 
    0449: 3C 03 68 D4                                      // <.h.

                    Return (TSMI (Arg1, Arg2, Arg3))
                }


    044D: A4 54 53 4D 49 69 6A 6B                          // .TSMIijk

                Return (
    0455: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}



Table Header:
Table Body (Length 0x45A)
