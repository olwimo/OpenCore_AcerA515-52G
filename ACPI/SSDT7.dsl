{
    External (_SB_.PCI0.LPCB.ESPI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDDT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDPN, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDVB, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (DBGF, FieldUnitObj)
    External (DBUP, FieldUnitObj)
    External (DPM1, UnknownObj)
    External (DPM2, UnknownObj)
    External (DPM3, UnknownObj)
    External (NDUS, UnknownObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PCAO, MethodObj)    // 4 Arguments
    External (PCRR, MethodObj)    // 2 Arguments
    External (TBTS, UnknownObj)
    External (TP1D, UnknownObj)
    External (TP1P, UnknownObj)
    External (TP1T, UnknownObj)
    External (TP2D, UnknownObj)
    External (TP2P, UnknownObj)
    External (TP2T, UnknownObj)
    External (TP3D, UnknownObj)
    External (TP3P, UnknownObj)
    External (TP3T, UnknownObj)
    External (TP4D, UnknownObj)
    External (TP4P, UnknownObj)
    External (TP4T, UnknownObj)
    External (TP5D, UnknownObj)
    External (TP5P, UnknownObj)
    External (TP5T, UnknownObj)
    External (TP6D, UnknownObj)
    External (TP6P, UnknownObj)
    External (TP6T, UnknownObj)
    External (TTUP, UnknownObj)
    External (UBCB, UnknownObj)
    External (UCRT, IntObj)
    External (UDGF, FieldUnitObj)
    External (UDUP, FieldUnitObj)
    External (USTC, UnknownObj)
    External (UTCE, UnknownObj)
    External (XDCE, UnknownObj)


    0024: A0 41 18 00 15 55 42 43 42 00 00 15 58 44 43 45  // .A...UBCB...XDCE
    0034: 00 00 15 55 53 54 43 00 00 15 55 54 43 45 00 00  // ...USTC...UTCE..
    0044: 15 54 42 54 53 00 00 15 4E 44 55 53 00 00 15 44  // .TBTS...NDUS...D
    0054: 50 4D 31 00 00 15 44 50 4D 32 00 00 15 44 50 4D  // PM1...DPM2...DPM
    0064: 33 00 00 15 54 54 55 50 00 00 15 54 50 31 54 00  // 3...TTUP...TP1T.
    0074: 00 15 54 50 31 50 00 00 15 54 50 31 44 00 00 15  // ..TP1P...TP1D...
    0084: 54 50 32 54 00 00 15 54 50 32 50 00 00 15 54 50  // TP2T...TP2P...TP
    0094: 32 44 00 00 15 54 50 33 54 00 00 15 54 50 33 50  // 2D...TP3T...TP3P
    00A4: 00 00 15 54 50 33 44 00 00 15 54 50 34 54 00 00  // ...TP3D...TP4T..
    00B4: 15 54 50 34 50 00 00 15 54 50 34 44 00 00 15 54  // .TP4P...TP4D...T
    00C4: 50 35 54 00 00 15 54 50 35 50 00 00 15 54 50 35  // P5T...TP5P...TP5
    00D4: 44 00 00 15 54 50 36 54 00 00 15 54 50 36 50 00  // D...TP6T...TP6P.
    00E4: 00 15 54 50 36 44 00 00 15 5C 50 38 58 48 08 02  // ..TP6D...\P8XH..
    00F4: 15 5C 2F 04 5F 53 42 5F 50 43 49 30 58 48 43 5F  // .\/._SB_PCI0XHC_
    0104: 52 48 55 42 06 00 15 5C 50 43 41 4F 08 04 15 5C  // RHUB...\PCAO...\
    0114: 50 43 52 52 08 02 15 5C 2F 05 5F 53 42 5F 50 43  // PCRR...\/._SB_PC
    0124: 49 30 4C 50 43 42 48 5F 45 43 50 44 56 42 00 00  // I0LPCBH_ECPDVB..
    0134: 15 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0144: 48 5F 45 43 50 44 44 54 00 00 15 5C 2F 05 5F 53  // H_ECPDDT...\/._S
    0154: 42 5F 50 43 49 30 4C 50 43 42 48 5F 45 43 50 44  // B_PCI0LPCBH_ECPD
    0164: 50 4E 00 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30  // PN...\/._SB_PCI0
    0174: 4C 50 43 42 45 53 50 49 00 00 15 5C 55 44 47 46  // LPCBESPI...\UDGF
    0184: 05 00 15 5C 55 44 55 50 05 00 15 5C 44 42 47 46  // ...\UDUP...\DBGF
    0194: 05 00 15 5C 44 42 55 50 05 00 15 5C 55 43 52 54  // ...\DBUP...\UCRT
    01A4: 01 00                                            // ..

    Scope (\_SB)
    {

    01A6: 10 48 9F 5C 5F 53 42 5F                          // .H.\_SB_

        Device (UBTC)
        {

    01AE: 5B 82 4F 9E 55 42 54 43                          // [.O.UBTC

            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID

    01B6: 08 5F 48 49 44 0C 56 62 C0 00                    // ._HID.Vb..

            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID

    01C0: 08 5F 43 49 44 0C 41 D0 0C A0                    // ._CID.A...

            Name (_UID, Zero)  // _UID: Unique ID

    01CA: 08 5F 55 49 44 00                                // ._UID.

            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name

    01D0: 08 5F 44 44 4E 0D 55 53 42 20 54 79 70 65 20 43  // ._DDN.USB Type C
    01E0: 00                                               // .

            Name (_ADR, Zero)  // _ADR: Address

    01E1: 08 5F 41 44 52 00                                // ._ADR.

            If ((UCRT == One))
            {

    01E7: A0 22 93 55 43 52 54 01                          // .".UCRT.

                Name (_DEP, 
    01EF: 08 5F 44 45 50                                   // ._DEP

Package (0x01)  // _DEP: Dependencies
                {
                    \_SB.PCI0.LPCB.H_EC
                })
            }


    01F4: 12 15 01 5C 2F 04 5F 53 42 5F 50 43 49 30 4C 50  // ...\/._SB_PCI0LP
    0204: 43 42 48 5F 45 43                                // CBH_EC

            Name (CRS, 
    020A: 08 43 52 53 5F                                   // .CRS_

ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
            })

    020F: 11 11 0A 0E 86 09 00 01 00 00 00 00 00 10 00 00  // ................
    021F: 79 00                                            // y.

            Method (RUCC, 2, Serialized)
            {

    0221: 14 4E 18 52 55 43 43 0A                          // .N.RUCC.


    0229: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg0))
                {

    022F: A2 40 18 01 70 99 68 00 5F 54 5F 30              // .@..p.h._T_0

                    Case (One)
                    {

    023B: A0 36 93 5F 54 5F 30 01                          // .6._T_0.

                        If ((Arg1 == One))
                        {

    0243: A0 18 93 69 01                                   // ...i.

                            Return (\_SB.UBTC.CR01._UPC ())
                        }

    0248: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 31  // .\/._SB_UBTCCR01
    0258: 5F 55 50 43                                      // _UPC

                        Else
                        {

    025C: A1 15                                            // ..

                            Return (\_SB.UBTC.CR01._PLD ())
                        }
                    }

    025E: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 31  // .\/._SB_UBTCCR01
    026E: 5F 50 4C 44                                      // _PLD

                    Case
    0272: A1 4C 13                                         // .L.

 (0x02)
                    {

    0275: A0 37 93 5F 54 5F 30 0A 02                       // .7._T_0..

                        If ((Arg1 == One))
                        {

    027E: A0 18 93 69 01                                   // ...i.

                            Return (\_SB.UBTC.CR02._UPC ())
                        }

    0283: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 32  // .\/._SB_UBTCCR02
    0293: 5F 55 50 43                                      // _UPC

                        Else
                        {

    0297: A1 15                                            // ..

                            Return (\_SB.UBTC.CR02._PLD ())
                        }
                    }

    0299: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 32  // .\/._SB_UBTCCR02
    02A9: 5F 50 4C 44                                      // _PLD

                    Case
    02AD: A1 41 10                                         // .A.

 (0x03)
                    {

    02B0: A0 37 93 5F 54 5F 30 0A 03                       // .7._T_0..

                        If ((Arg1 == One))
                        {

    02B9: A0 18 93 69 01                                   // ...i.

                            Return (\_SB.UBTC.CR03._UPC ())
                        }

    02BE: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 33  // .\/._SB_UBTCCR03
    02CE: 5F 55 50 43                                      // _UPC

                        Else
                        {

    02D2: A1 15                                            // ..

                            Return (\_SB.UBTC.CR03._PLD ())
                        }
                    }

    02D4: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 33  // .\/._SB_UBTCCR03
    02E4: 5F 50 4C 44                                      // _PLD

                    Case
    02E8: A1 46 0C                                         // .F.

 (0x04)
                    {

    02EB: A0 37 93 5F 54 5F 30 0A 04                       // .7._T_0..

                        If ((Arg1 == One))
                        {

    02F4: A0 18 93 69 01                                   // ...i.

                            Return (\_SB.UBTC.CR04._UPC ())
                        }

    02F9: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 34  // .\/._SB_UBTCCR04
    0309: 5F 55 50 43                                      // _UPC

                        Else
                        {

    030D: A1 15                                            // ..

                            Return (\_SB.UBTC.CR04._PLD ())
                        }
                    }

    030F: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 34  // .\/._SB_UBTCCR04
    031F: 5F 50 4C 44                                      // _PLD

                    Case
    0323: A1 4B 08                                         // .K.

 (0x05)
                    {

    0326: A0 37 93 5F 54 5F 30 0A 05                       // .7._T_0..

                        If ((Arg1 == One))
                        {

    032F: A0 18 93 69 01                                   // ...i.

                            Return (\_SB.UBTC.CR05._UPC ())
                        }

    0334: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 35  // .\/._SB_UBTCCR05
    0344: 5F 55 50 43                                      // _UPC

                        Else
                        {

    0348: A1 15                                            // ..

                            Return (\_SB.UBTC.CR05._PLD ())
                        }
                    }

    034A: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 35  // .\/._SB_UBTCCR05
    035A: 5F 50 4C 44                                      // _PLD

                    Case
    035E: A1 40 05                                         // .@.

 (0x06)
                    {

    0361: A0 37 93 5F 54 5F 30 0A 06                       // .7._T_0..

                        If ((Arg1 == One))
                        {

    036A: A0 18 93 69 01                                   // ...i.

                            Return (\_SB.UBTC.CR06._UPC ())
                        }

    036F: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 36  // .\/._SB_UBTCCR06
    037F: 5F 55 50 43                                      // _UPC

                        Else
                        {

    0383: A1 15                                            // ..

                            Return (\_SB.UBTC.CR06._PLD ())
                        }
                    }

    0385: A4 5C 2F 04 5F 53 42 5F 55 42 54 43 43 52 30 36  // .\/._SB_UBTCCR06
    0395: 5F 50 4C 44                                      // _PLD

                    Default
                    {

    0399: A1 15                                            // ..

                        If ((Arg1 == One))
                        {

    039B: A0 0A 93 69 01                                   // ...i.

                            Return (TUPC (Zero))
                        }

    03A0: A4 54 55 50 43 00                                // .TUPC.

                        Else
                        {

    03A6: A1 08                                            // ..

                            Return (TPLD (Zero, Zero))
                        }
                    }


    03A8: A4 54 50 4C 44 00 00                             // .TPLD..

                }
            }


    03AF: A5                                               // .

            Method (FPMN, 1, Serialized)
            {

    03B0: 14 48 14 46 50 4D 4E 09                          // .H.FPMN.


    03B8: 08 5F 54 5F 30 00                                // ._T_0.

                Switch (ToInteger (Arg0))
                {

    03BE: A2 48 11 01 70 99 68 00 5F 54 5F 30              // .H..p.h._T_0

                    Case (One)
                    {
                        Local0 = (TP1D >> One)
                        Local0 &= 0x03
                        Local1 = (TP1D & One)
                        Local2 = TP1P /* External reference */

    03CA: A0 26 93 5F 54 5F 30 01 7A 54 50 31 44 01 60 7B  // .&._T_0.zTP1D.`{
    03DA: 60 0A 03 60 7B 54 50 31 44 01 61 70 54 50 31 50  // `..`{TP1D.apTP1P
    03EA: 62                                               // b

                        Local3 = TP1T /* External reference */
                    }

    03EB: 70 54 50 31 54 63                                // pTP1Tc

                    Case
    03F1: A1 44 0E                                         // .D.

 (0x02)
                    {
                        Local0 = (TP2D >> One)
                        Local0 &= 0x03
                        Local1 = (TP2D & One)
                        Local2 = TP2P /* External reference */

    03F4: A0 27 93 5F 54 5F 30 0A 02 7A 54 50 32 44 01 60  // .'._T_0..zTP2D.`
    0404: 7B 60 0A 03 60 7B 54 50 32 44 01 61 70 54 50 32  // {`..`{TP2D.apTP2
    0414: 50 62                                            // Pb

                        Local3 = TP2T /* External reference */
                    }

    0416: 70 54 50 32 54 63                                // pTP2Tc

                    Case
    041C: A1 49 0B                                         // .I.

 (0x03)
                    {
                        Local0 = (TP3D >> One)
                        Local0 &= 0x03
                        Local1 = (TP3D & One)
                        Local2 = TP3P /* External reference */

    041F: A0 27 93 5F 54 5F 30 0A 03 7A 54 50 33 44 01 60  // .'._T_0..zTP3D.`
    042F: 7B 60 0A 03 60 7B 54 50 33 44 01 61 70 54 50 33  // {`..`{TP3D.apTP3
    043F: 50 62                                            // Pb

                        Local3 = TP3T /* External reference */
                    }

    0441: 70 54 50 33 54 63                                // pTP3Tc

                    Case
    0447: A1 4E 08                                         // .N.

 (0x04)
                    {
                        Local0 = (TP4D >> One)
                        Local0 &= 0x03
                        Local1 = (TP4D & One)
                        Local2 = TP4P /* External reference */

    044A: A0 27 93 5F 54 5F 30 0A 04 7A 54 50 34 44 01 60  // .'._T_0..zTP4D.`
    045A: 7B 60 0A 03 60 7B 54 50 34 44 01 61 70 54 50 34  // {`..`{TP4D.apTP4
    046A: 50 62                                            // Pb

                        Local3 = TP4T /* External reference */
                    }

    046C: 70 54 50 34 54 63                                // pTP4Tc

                    Case
    0472: A1 43 06                                         // .C.

 (0x05)
                    {
                        Local0 = (TP5D >> One)
                        Local0 &= 0x03
                        Local1 = (TP5D & One)
                        Local2 = TP5P /* External reference */

    0475: A0 27 93 5F 54 5F 30 0A 05 7A 54 50 35 44 01 60  // .'._T_0..zTP5D.`
    0485: 7B 60 0A 03 60 7B 54 50 35 44 01 61 70 54 50 35  // {`..`{TP5D.apTP5
    0495: 50 62                                            // Pb

                        Local3 = TP5T /* External reference */
                    }

    0497: 70 54 50 35 54 63                                // pTP5Tc

                    Case
    049D: A1 38                                            // .8

 (0x06)
                    {
                        Local0 = (TP6D >> One)
                        Local0 &= 0x03
                        Local1 = (TP6D & One)
                        Local2 = TP6P /* External reference */

    049F: A0 27 93 5F 54 5F 30 0A 06 7A 54 50 36 44 01 60  // .'._T_0..zTP6D.`
    04AF: 7B 60 0A 03 60 7B 54 50 36 44 01 61 70 54 50 36  // {`..`{TP6D.apTP6
    04BF: 50 62                                            // Pb

                        Local3 = TP6T /* External reference */
                    }

    04C1: 70 54 50 36 54 63                                // pTP6Tc

                    Default
                    {
                        Local0 = 0xFF
                        Local1 = Zero
                        Local2 = Zero

    04C7: A1 0E 70 0A FF 60 70 00 61 70 00 62              // ..p..`p.ap.b

                        Local3 = Zero
                    }


    04D3: 70 00 63                                         // p.c

                }


    04D6: A5                                               // .

                If ((Local0 == Zero))
                {

    04D7: A0 06 93 60 00                                   // ...`.

                    Return (Local2)
                }

    04DC: A4 62                                            // .b

                ElseIf
    04DE: A1 1A                                            // ..

 (((Local0 == One) || 
    04E0: A0 14 91 93 60 01                                // ....`.

(Local0 == 0x02)))
                {

    04E6: 93 60 0A 02                                      // .`..

                    If ((Local1 == One))
                    {

    04EA: A0 06 93 61 01                                   // ...a.

                        Return (Local2)
                    }

    04EF: A4 62                                            // .b

                    Else
                    {

    04F1: A1 03                                            // ..

                        Return (Local3)
                    }
                }

    04F3: A4 63                                            // .c

                Else
                {

    04F5: A1 03                                            // ..

                    Return (Zero)
                }
            }


    04F7: A4 00                                            // ..

            Method (TPLD, 2, Serialized)
            {

    04F9: 14 48 0A 54 50 4C 44 0A                          // .H.TPLD.

                Name (PCKG, 
    0501: 08 50 43 4B 47                                   // .PCKG

Package (0x01)
                {

    0506: 12 06 01                                         // ...

                    Buffer (0x10) {}
                })

    0509: 11 03 0A 10                                      // ....

                CreateField (DerefOf (
    050D: 5B 13 83                                         // [..

PCKG [Zero]), Zero, 0x07, REV)
                REV = One

    0510: 88 50 43 4B 47 00 00 00 0A 07 52 45 56 5F 70 01  // .PCKG.....REV_p.
    0520: 52 45 56 5F                                      // REV_

                CreateField (DerefOf (
    0524: 5B 13 83                                         // [..

PCKG [Zero]), 0x40, One, VISI)
                VISI = Arg0

    0527: 88 50 43 4B 47 00 00 0A 40 01 56 49 53 49 70 68  // .PCKG...@.VISIph
    0537: 56 49 53 49                                      // VISI

                CreateField (DerefOf (
    053B: 5B 13 83                                         // [..

PCKG [Zero]), 0x57, 0x08, GPOS)
                GPOS = Arg1

    053E: 88 50 43 4B 47 00 00 0A 57 0A 08 47 50 4F 53 70  // .PCKG...W..GPOSp
    054E: 69 47 50 4F 53                                   // iGPOS

                CreateField (DerefOf (
    0553: 5B 13 83                                         // [..

PCKG [Zero]), 0x4A, 0x04, SHAP)
                SHAP = One

    0556: 88 50 43 4B 47 00 00 0A 4A 0A 04 53 48 41 50 70  // .PCKG...J..SHAPp
    0566: 01 53 48 41 50                                   // .SHAP

                CreateField (DerefOf (
    056B: 5B 13 83                                         // [..

PCKG [Zero]), 0x20, 0x10, WID)
                WID = 0x08

    056E: 88 50 43 4B 47 00 00 0A 20 0A 10 57 49 44 5F 70  // .PCKG... ..WID_p
    057E: 0A 08 57 49 44 5F                                // ..WID_

                CreateField (DerefOf (
    0584: 5B 13 83                                         // [..

PCKG [Zero]), 0x30, 0x10, HGT)
                HGT = 0x03

    0587: 88 50 43 4B 47 00 00 0A 30 0A 10 48 47 54 5F 70  // .PCKG...0..HGT_p
    0597: 0A 03 48 47 54 5F                                // ..HGT_

                Return (PCKG) /* \_SB_.UBTC.TPLD.PCKG */
            }


    059D: A4 50 43 4B 47                                   // .PCKG

            Method (TUPC, 1, Serialized)
            {

    05A2: 14 20 54 55 50 43 09                             // . TUPC.

                Name (PCKG, 
    05A9: 08 50 43 4B 47                                   // .PCKG

Package (0x04)
                {
                    One, 
                    Zero, 
                    Zero, 
                    Zero
                })
                PCKG [One] = Arg0

    05AE: 12 06 04 01 00 00 00 70 68 88 50 43 4B 47 01 00  // .......ph.PCKG..

                Return (PCKG) /* \_SB_.UBTC.TUPC.PCKG */
            }


    05BE: A4 50 43 4B 47                                   // .PCKG

            If (
    05C3: A0 35 92                                         // .5.

(TTUP >= One))
            {

    05C6: 95 54 54 55 50 01                                // .TTUP.

                Device (CR01)
                {

    05CC: 5B 82 2B 43 52 30 31                             // [.+CR01

                    Name (_ADR, Zero)  // _ADR: Address

    05D3: 08 5F 41 44 52 00                                // ._ADR.

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {

    05D9: 14 11 5F 50 4C 44 00                             // .._PLD.

                        Return (TPLD (One, FPMN (One)))
                    }


    05E0: A4 54 50 4C 44 01 46 50 4D 4E 01                 // .TPLD.FPMN.

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {

    05EB: 14 0D 5F 55 50 43 00                             // .._UPC.

                        Return (TUPC (0x09))
                    }
                }
            }


    05F2: A4 54 55 50 43 0A 09                             // .TUPC..

            If (
    05F9: A0 37 92                                         // .7.

(TTUP >= 0x02))
            {

    05FC: 95 54 54 55 50 0A 02                             // .TTUP..

                Device (CR02)
                {

    0603: 5B 82 2C 43 52 30 32                             // [.,CR02

                    Name (_ADR, Zero)  // _ADR: Address

    060A: 08 5F 41 44 52 00                                // ._ADR.

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {

    0610: 14 12 5F 50 4C 44 00                             // .._PLD.

                        Return (TPLD (One, FPMN (0x02)))
                    }


    0617: A4 54 50 4C 44 01 46 50 4D 4E 0A 02              // .TPLD.FPMN..

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {

    0623: 14 0D 5F 55 50 43 00                             // .._UPC.

                        Return (TUPC (0x09))
                    }
                }
            }


    062A: A4 54 55 50 43 0A 09                             // .TUPC..

            If (
    0631: A0 37 92                                         // .7.

(TTUP >= 0x03))
            {

    0634: 95 54 54 55 50 0A 03                             // .TTUP..

                Device (CR03)
                {

    063B: 5B 82 2C 43 52 30 33                             // [.,CR03

                    Name (_ADR, Zero)  // _ADR: Address

    0642: 08 5F 41 44 52 00                                // ._ADR.

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {

    0648: 14 12 5F 50 4C 44 00                             // .._PLD.

                        Return (TPLD (One, FPMN (0x03)))
                    }


    064F: A4 54 50 4C 44 01 46 50 4D 4E 0A 03              // .TPLD.FPMN..

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {

    065B: 14 0D 5F 55 50 43 00                             // .._UPC.

                        Return (TUPC (0x09))
                    }
                }
            }


    0662: A4 54 55 50 43 0A 09                             // .TUPC..

            If (
    0669: A0 37 92                                         // .7.

(TTUP >= 0x04))
            {

    066C: 95 54 54 55 50 0A 04                             // .TTUP..

                Device (CR04)
                {

    0673: 5B 82 2C 43 52 30 34                             // [.,CR04

                    Name (_ADR, Zero)  // _ADR: Address

    067A: 08 5F 41 44 52 00                                // ._ADR.

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {

    0680: 14 12 5F 50 4C 44 00                             // .._PLD.

                        Return (TPLD (One, FPMN (0x04)))
                    }


    0687: A4 54 50 4C 44 01 46 50 4D 4E 0A 04              // .TPLD.FPMN..

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {

    0693: 14 0D 5F 55 50 43 00                             // .._UPC.

                        Return (TUPC (0x09))
                    }
                }
            }


    069A: A4 54 55 50 43 0A 09                             // .TUPC..

            If (
    06A1: A0 37 92                                         // .7.

(TTUP >= 0x05))
            {

    06A4: 95 54 54 55 50 0A 05                             // .TTUP..

                Device (CR05)
                {

    06AB: 5B 82 2C 43 52 30 35                             // [.,CR05

                    Name (_ADR, Zero)  // _ADR: Address

    06B2: 08 5F 41 44 52 00                                // ._ADR.

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {

    06B8: 14 12 5F 50 4C 44 00                             // .._PLD.

                        Return (TPLD (One, FPMN (0x05)))
                    }


    06BF: A4 54 50 4C 44 01 46 50 4D 4E 0A 05              // .TPLD.FPMN..

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {

    06CB: 14 0D 5F 55 50 43 00                             // .._UPC.

                        Return (TUPC (0x09))
                    }
                }
            }


    06D2: A4 54 55 50 43 0A 09                             // .TUPC..

            If (
    06D9: A0 37 92                                         // .7.

(TTUP >= 0x06))
            {

    06DC: 95 54 54 55 50 0A 06                             // .TTUP..

                Device (CR06)
                {

    06E3: 5B 82 2C 43 52 30 36                             // [.,CR06

                    Name (_ADR, Zero)  // _ADR: Address

    06EA: 08 5F 41 44 52 00                                // ._ADR.

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {

    06F0: 14 12 5F 50 4C 44 00                             // .._PLD.

                        Return (TPLD (One, FPMN (0x06)))
                    }


    06F7: A4 54 50 4C 44 01 46 50 4D 4E 0A 06              // .TPLD.FPMN..

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {

    0703: 14 0D 5F 55 50 43 00                             // .._UPC.

                        Return (TUPC (0x09))
                    }
                }
            }


    070A: A4 54 55 50 43 0A 09                             // .TUPC..

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {

    0711: 14 1F 5F 43 52 53 08                             // .._CRS.

                CreateDWordField (CRS, \_SB.UBTC._Y00._BAS, CBAS)  // _BAS: Base Address
                CBAS = UBCB /* External reference */

    0718: 8A 43 52 53 5F 0A 04 43 42 41 53 70 55 42 43 42  // .CRS_..CBASpUBCB
    0728: 43 42 41 53                                      // CBAS

                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }


    072C: A4 43 52 53 5F                                   // .CRS_

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {

    0731: 14 30 5F 53 54 41 00                             // .0_STA.

                If ((USTC == One))
                {

    0738: A0 27 93 55 53 54 43 01                          // .'.USTC.

                    If (\_SB.PCI0.LPCB.ESPI)
                    {

    0740: A0 1F 5C 2F 04 5F 53 42 5F 50 43 49 30 4C 50 43  // ..\/._SB_PCI0LPC
    0750: 42 45 53 50 49                                   // BESPI

                        If ((UTCE == Zero))
                        {

    0755: A0 0A 93 55 54 43 45 00                          // ...UTCE.

                            Return (0x0F)
                        }
                    }
                }


    075D: A4 0A 0F                                         // ...

                Return (Zero)
            }


    0760: A4 00                                            // ..

            OperationRegion (USBC, SystemMemory, UBCB, 0x38)

    0762: 5B 80 55 53 42 43 00 55 42 43 42 0A 38           // [.USBC.UBCB.8

            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }


    076F: 5B 81 47 0F 55 53 42 43 11 56 45 52 31 08 56 45  // [.G.USBC.VER1.VE
    077F: 52 32 08 52 53 56 31 08 52 53 56 32 08 43 43 49  // R2.RSV1.RSV2.CCI
    078F: 30 08 43 43 49 31 08 43 43 49 32 08 43 43 49 33  // 0.CCI1.CCI2.CCI3
    079F: 08 43 54 4C 30 08 43 54 4C 31 08 43 54 4C 32 08  // .CTL0.CTL1.CTL2.
    07AF: 43 54 4C 33 08 43 54 4C 34 08 43 54 4C 35 08 43  // CTL3.CTL4.CTL5.C
    07BF: 54 4C 36 08 43 54 4C 37 08 4D 47 49 30 08 4D 47  // TL6.CTL7.MGI0.MG
    07CF: 49 31 08 4D 47 49 32 08 4D 47 49 33 08 4D 47 49  // I1.MGI2.MGI3.MGI
    07DF: 34 08 4D 47 49 35 08 4D 47 49 36 08 4D 47 49 37  // 4.MGI5.MGI6.MGI7
    07EF: 08 4D 47 49 38 08 4D 47 49 39 08 4D 47 49 41 08  // .MGI8.MGI9.MGIA.
    07FF: 4D 47 49 42 08 4D 47 49 43 08 4D 47 49 44 08 4D  // MGIB.MGIC.MGID.M
    080F: 47 49 45 08 4D 47 49 46 08 4D 47 4F 30 08 4D 47  // GIE.MGIF.MGO0.MG
    081F: 4F 31 08 4D 47 4F 32 08 4D 47 4F 33 08 4D 47 4F  // O1.MGO2.MGO3.MGO
    082F: 34 08 4D 47 4F 35 08 4D 47 4F 36 08 4D 47 4F 37  // 4.MGO5.MGO6.MGO7
    083F: 08 4D 47 4F 38 08 4D 47 4F 39 08 4D 47 4F 41 08  // .MGO8.MGO9.MGOA.
    084F: 4D 47 4F 42 08 4D 47 4F 43 08 4D 47 4F 44 08 4D  // MGOB.MGOC.MGOD.M
    085F: 47 4F 45 08 4D 47 4F 46 08                       // GOE.MGOF.

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {

    0868: 14 41 07 5F 44 53 4D 0C                          // .A._DSM.


    0870: 08 5F 54 5F 30 00                                // ._T_0.

                If ((Arg0 == 
    0876: A0 4E 05 93 68                                   // .N..h

ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f") /* Unknown UUID */))
                {

    087B: 11 13 0A 10 C2 98 83 6F A4 7C E4 11 AD 36 63 10  // .......o.|...6c.
    088B: 42 B5 00 8F                                      // B...

                    Switch (ToInteger (Arg2))
                    {

    088F: A2 45 04 01 70 99 6A 00 5F 54 5F 30              // .E..p.j._T_0

                        Case (Zero)
                        {

    089B: A0 0C 93 5F 54 5F 30 00                          // ..._T_0.

                            Return (
    08A3: A4                                               // .

Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }

    08A4: 11 03 01 0F                                      // ....

                        Case
    08A8: A1 2B                                            // .+

 (One)
                        {
                            P8XH (Zero, 0xE0)
                        }

    08AA: A0 0E 93 5F 54 5F 30 01 50 38 58 48 00 0A E0     // ..._T_0.P8XH...

                        Case
    08B9: A1 1A                                            // ..

 (
    08BB: A0 08                                            // ..

0x02)
                        {
                        }

    08BD: 93 5F 54 5F 30 0A 02                             // ._T_0..

                        Case
    08C4: A1 0F                                            // ..

 (0x03)
                        {

    08C6: A0 0D 93 5F 54 5F 30 0A 03                       // ..._T_0..

                            Return (XDCE) /* External reference */
                        }


    08CF: A4 58 44 43 45                                   // .XDCE

                    }
                }


    08D4: A5                                               // .

                Return (
    08D5: A4                                               // .

Buffer (One)
                {
                     0x00                                             // .
                })
            }


    08D6: 11 03 01 00                                      // ....

            Method (PSPR, 3, Serialized)
            {
                Local3 = Zero

    08DA: 14 44 0E 50 53 50 52 0B 70 00 63                 // .D.PSPR.p.c

                If ((Arg1 == Zero))
                {

    08E5: A0 07 93 69 00                                   // ...i.

                    Local3 = One
                }

    08EA: 70 01 63                                         // p.c

                ElseIf
    08ED: A1 20                                            // . 

 ((Arg1 == 0x60))
                {

    08EF: A0 08 93 69 0A 60                                // ...i.`

                    Local3 = One
                }

    08F5: 70 01 63                                         // p.c

                ElseIf
    08F8: A1 15                                            // ..

 ((Arg1 == 0x80))
                {

    08FA: A0 08 93 69 0A 80                                // ...i..

                    Local3 = One
                }

    0900: 70 01 63                                         // p.c

                ElseIf
    0903: A1 0A                                            // ..

 ((Arg1 == 0x20))
                {

    0905: A0 08 93 69 0A 20                                // ...i. 

                    Local3 = One
                }


    090B: 70 01 63                                         // p.c

                If ((Local3 == Zero))
                {

    090E: A0 06 93 63 00                                   // ...c.

                    Return (Zero)
                }


    0913: A4 00                                            // ..

                If (((Arg1 == 0x80) == 
    0915: A0 0B 93 93 69 0A 80                             // ....i..

(Arg2 == One)))
                {

    091C: 93 6A 01                                         // .j.

                    Return (Zero)
                }

                Local1 = 0xFFFFFF1F
                Local0 = (Arg0 << 0x10)

    091F: A4 00 70 0C 1F FF FF FF 61 79 68 0A 10 60        // ..p.....ayh..`

                If ((Arg2 == Zero))
                {

    092D: A0 0C 93 6A 00                                   // ...j.

                    Local0 = 
    0932: 70                                               // p

(0x0500 + Local0)
                }

    0933: 72 0B 00 05 60 00 60                             // r...`.`

                Else
                {

    093A: A1 09                                            // ..

                    Local0 = 
    093C: 70                                               // p

(0x0600 + Local0)
                }

                PCAO (0x70, Local0, Local1, Arg1)
                Local0 = 
    093D: 72 0B 00 06 60 00 60 50 43 41 4F 0A 70 60 61 69  // r...`.`PCAO.p`ai
    094D: 70                                               // p

(0x08 + Local0)
                Local3 = Zero

    094E: 72 0A 08 60 00 60 70 00 63                       // r..`.`p.c

                While ((Local3 == Zero))
                {
                    Local2 = 
    0957: A2 47 06 93 63 00 70                             // .G..c.p

(PCRR (0x70, Local0) & 0xFF)

    095E: 7B 50 43 52 52 0A 70 60 0A FF 00 62              // {PCRR.p`...b

                    If ((Arg1 == Zero))
                    {

    096A: A0 11 93 69 00                                   // ...i.

                        If (((Local2 == One) || 
    096F: A0 0C 91 93 62 01                                // ....b.

(Local2 == 0x20)))
                        {

    0975: 93 62 0A 20                                      // .b. 

                            Local3 = One
                        }
                    }

    0979: 70 01 63                                         // p.c

                    ElseIf
    097C: A1 42 04                                         // .B.

 ((Arg1 == 0x80))
                    {

    097F: A0 0E 93 69 0A 80                                // ...i..

                        If ((Local2 == 0x40))
                        {

    0985: A0 08 93 62 0A 40                                // ...b.@

                            Local3 = One
                        }
                    }

    098B: 70 01 63                                         // p.c

                    ElseIf
    098E: A1 30                                            // .0

 ((Arg1 == 0x60))
                    {

    0990: A0 18 93 69 0A 60                                // ...i.`

                        If ((((Local2 == 0x80) || 
    0996: A0 12 91 91 93 62 0A 80                          // .....b..

(Local2 == 0x08)) || 
    099E: 93 62 0A 08                                      // .b..

(Local2 == 0x20)))
                        {

    09A2: 93 62 0A 20                                      // .b. 

                            Local3 = One
                        }
                    }

    09A6: 70 01 63                                         // p.c

                    ElseIf
    09A9: A1 15                                            // ..

 ((Arg1 == 0x20))
                    {

    09AB: A0 13 93 69 0A 20                                // ...i. 

                        If (((Local2 == 0x02) || 
    09B1: A0 0D 91 93 62 0A 02                             // ....b..

(Local2 == 0x10)))
                        {

    09B8: 93 62 0A 10                                      // .b..

                            Local3 = One
                        }
                    }
                }
            }


    09BC: 70 01 63                                         // p.c

            Method (SPHT, 1, Serialized)
            {
                PSPR (Arg0, Zero, Zero)
                PSPR (Arg0, Zero, One)
            }


    09BF: 14 14 53 50 48 54 09 50 53 50 52 68 00 00 50 53  // ..SPHT.PSPRh..PS
    09CF: 50 52 68 00 01                                   // PRh..

            Method (SPTD, 1, Serialized)
            {
                PSPR (Arg0, 0x60, Zero)
                PSPR (Arg0, 0x60, One)
            }


    09D4: 14 16 53 50 54 44 09 50 53 50 52 68 0A 60 00 50  // ..SPTD.PSPRh.`.P
    09E4: 53 50 52 68 0A 60 01                             // SPRh.`.

            Method (SPDB, 1, Serialized)
            {
                PSPR (Arg0, 0x60, Zero)
            }


    09EB: 14 0E 53 50 44 42 09 50 53 50 52 68 0A 60 00     // ..SPDB.PSPRh.`.

            Method (USPR, 2, Serialized)
            {

    09FA: 14 44 1A 55 53 50 52 0A                          // .D.USPR.

                If ((Arg0 == One))
                {

    0A02: A0 40 14 93 68 01                                // .@..h.

                    If (
    0A08: A0 36 92                                         // .6.

(\_SB.PCI0.LPCB.H_EC.PDDT != Zero))
                    {
                        SPHT (\_SB.PCI0.LPCB.H_EC.PDPN)
                    }

    0A0B: 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0A1B: 48 5F 45 43 50 44 44 54 00 53 50 48 54 5C 2F 05  // H_ECPDDT.SPHT\/.
    0A2B: 5F 53 42 5F 50 43 49 30 4C 50 43 42 48 5F 45 43  // _SB_PCI0LPCBH_EC
    0A3B: 50 44 50 4E                                      // PDPN

                    Else
                    {
                        Local0 = PCRR (0xB8, 0x04)

    0A3F: A1 43 10 70 50 43 52 52 0A B8 0A 04 60           // .C.pPCRR....`

                        If ((((Local0 & 0x4000) == Zero) || 
    0A4C: A0 44 0B 91 93 7B 60 0B 00 40 00 00              // .D...{`..@..


    0A58: 92                                               // .

(\UDGF != Zero)))
                        {

    0A59: 93 5C 55 44 47 46 00                             // .\UDGF.

                            If ((((Local0 & 0x20) == One) && 
    0A60: A0 40 05 90 93 7B 60 0A 20 00 01                 // .@...{`. ..

(\DBGF == Zero)))
                            {
                                \DBGF = One
                                \DBUP = \_SB.PCI0.LPCB.H_EC.PDPN /* External reference */
                                SPDB (\_SB.PCI0.LPCB.H_EC.PDPN)
                            }

    0A6B: 93 5C 44 42 47 46 00 70 01 5C 44 42 47 46 70 5C  // .\DBGF.p.\DBGFp\
    0A7B: 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 48 5F  // /._SB_PCI0LPCBH_
    0A8B: 45 43 50 44 50 4E 5C 44 42 55 50 53 50 44 42 5C  // ECPDPN\DBUPSPDB\
    0A9B: 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42 48 5F  // /._SB_PCI0LPCBH_
    0AAB: 45 43 50 44 50 4E                                // ECPDPN

                            ElseIf
    0AB1: A1 4F 04                                         // .O.

 ((((Local0 & 0x20) == Zero) || 
    0AB4: A0 4C 04 91 93 7B 60 0A 20 00 00                 // .L...{`. ..

(
    0ABF: 90 92                                            // ..

(
                                \DBGF != Zero) && 
    0AC1: 93 5C 44 42 47 46 00                             // .\DBGF.


    0AC8: 92                                               // .

(\_SB.PCI0.LPCB.H_EC.PDPN != \DBUP))))
                            {
                                SPTD (\_SB.PCI0.LPCB.H_EC.PDPN)
                            }
                        }

    0AC9: 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // .\/._SB_PCI0LPCB
    0AD9: 48 5F 45 43 50 44 50 4E 5C 44 42 55 50 53 50 54  // H_ECPDPN\DBUPSPT
    0AE9: 44 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43 42  // D\/._SB_PCI0LPCB
    0AF9: 48 5F 45 43 50 44 50 4E                          // H_ECPDPN

                        Else
                        {
                            \UDGF = One
                            \UDUP = \_SB.PCI0.LPCB.H_EC.PDPN /* External reference */
                            SPHT (\_SB.PCI0.LPCB.H_EC.PDPN)
                        }
                    }
                }

    0B01: A1 41 04 70 01 5C 55 44 47 46 70 5C 2F 05 5F 53  // .A.p.\UDGFp\/._S
    0B11: 42 5F 50 43 49 30 4C 50 43 42 48 5F 45 43 50 44  // B_PCI0LPCBH_ECPD
    0B21: 50 4E 5C 55 44 55 50 53 50 48 54 5C 2F 05 5F 53  // PN\UDUPSPHT\/._S
    0B31: 42 5F 50 43 49 30 4C 50 43 42 48 5F 45 43 50 44  // B_PCI0LPCBH_ECPD
    0B41: 50 4E                                            // PN

                Else
                {

    0B43: A1 4B 05                                         // .K.

                    If ((\_SB.PCI0.LPCB.H_EC.PDDT == Zero))
                    {
                        Local0 = PCRR (0xB8, 0x04)

    0B46: A0 48 04 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C  // .H..\/._SB_PCI0L
    0B56: 50 43 42 48 5F 45 43 50 44 44 54 00 70 50 43 52  // PCBH_ECPDDT.pPCR
    0B66: 52 0A B8 0A 04 60                                // R....`

                        If ((\UDGF == Zero))
                        {

    0B6C: A0 19 93 5C 55 44 47 46 00                       // ...\UDGF.

                            If (
    0B75: A0 10 92                                         // ...

(\DBGF != Zero))
                            {

    0B78: 93 5C 44 42 47 46 00                             // .\DBGF.

                                \DBGF = Zero
                            }
                        }

    0B7F: 70 00 5C 44 42 47 46                             // p.\DBGF

                        Else
                        {

    0B86: A1 08                                            // ..

                            \UDGF = Zero
                        }
                    }

                    PSPR (Arg0, 0x20, Zero)
                    PSPR (Arg0, 0x20, One)
                }
            }
        }
    }
}



Table Header:
Table Body (Length 0xB9F)
