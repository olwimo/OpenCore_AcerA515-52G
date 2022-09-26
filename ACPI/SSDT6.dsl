{
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (_SB_.PCI0.RP21.PXSX, DeviceObj)
    External (_SB_.UBTC.RUCC, MethodObj)    // 2 Arguments
    External (DPM1, IntObj)
    External (DPM2, IntObj)
    External (DPM3, IntObj)
    External (NDUS, IntObj)
    External (NTUS, IntObj)
    External (RPS0, IntObj)
    External (RPS1, IntObj)
    External (TBSE, IntObj)
    External (TBTS, IntObj)
    External (TP1D, IntObj)
    External (TP1P, IntObj)
    External (TP1T, IntObj)
    External (TP2D, IntObj)
    External (TP2P, IntObj)
    External (TP2T, IntObj)
    External (TP3D, IntObj)
    External (TP3P, IntObj)
    External (TP3T, IntObj)
    External (TP4D, IntObj)
    External (TP4P, IntObj)
    External (TP4T, IntObj)
    External (TP5D, IntObj)
    External (TP5P, IntObj)
    External (TP5T, IntObj)
    External (TP6D, IntObj)
    External (TP6P, IntObj)
    External (TP6T, IntObj)


    0024: A0 45 14 00 15 5C 2F 04 5F 53 42 5F 50 43 49 30  // .E...\/._SB_PCI0
    0034: 52 50 30 31 50 58 53 58 06 00 15 5C 2F 04 5F 53  // RP01PXSX...\/._S
    0044: 42 5F 50 43 49 30 52 50 30 35 50 58 53 58 06 00  // B_PCI0RP05PXSX..
    0054: 15 5C 2F 04 5F 53 42 5F 50 43 49 30 52 50 30 39  // .\/._SB_PCI0RP09
    0064: 50 58 53 58 06 00 15 5C 2F 04 5F 53 42 5F 50 43  // PXSX...\/._SB_PC
    0074: 49 30 52 50 32 31 50 58 53 58 06 00 15 5C 2F 03  // I0RP21PXSX...\/.
    0084: 5F 53 42 5F 55 42 54 43 52 55 43 43 08 02 15 5C  // _SB_UBTCRUCC...\
    0094: 54 42 54 53 01 00 15 5C 54 42 53 45 01 00 15 5C  // TBTS...\TBSE...\
    00A4: 52 50 53 30 01 00 15 5C 52 50 53 31 01 00 15 5C  // RPS0...\RPS1...\
    00B4: 4E 44 55 53 01 00 15 5C 44 50 4D 31 01 00 15 5C  // NDUS...\DPM1...\
    00C4: 44 50 4D 32 01 00 15 5C 44 50 4D 33 01 00 15 5C  // DPM2...\DPM3...\
    00D4: 4E 54 55 53 01 00 15 5C 54 50 31 54 01 00 15 5C  // NTUS...\TP1T...\
    00E4: 54 50 31 50 01 00 15 5C 54 50 31 44 01 00 15 5C  // TP1P...\TP1D...\
    00F4: 54 50 32 54 01 00 15 5C 54 50 32 50 01 00 15 5C  // TP2T...\TP2P...\
    0104: 54 50 32 44 01 00 15 5C 54 50 33 54 01 00 15 5C  // TP2D...\TP3T...\
    0114: 54 50 33 50 01 00 15 5C 54 50 33 44 01 00 15 5C  // TP3P...\TP3D...\
    0124: 54 50 34 54 01 00 15 5C 54 50 34 50 01 00 15 5C  // TP4T...\TP4P...\
    0134: 54 50 34 44 01 00 15 5C 54 50 35 54 01 00 15 5C  // TP4D...\TP5T...\
    0144: 54 50 35 50 01 00 15 5C 54 50 35 44 01 00 15 5C  // TP5P...\TP5D...\
    0154: 54 50 36 54 01 00 15 5C 54 50 36 50 01 00 15 5C  // TP6T...\TP6P...\
    0164: 54 50 36 44 01 00                                // TP6D..

    If (((TBTS == One) && 
    016A: A0 4A 4C 90 93 54 42 54 53 01                    // .JL..TBTS.

((RPS0 == One) || 
    0174: 91 93 52 50 53 30 01                             // ..RPS0.

(RPS1 == One))))
    {

    017B: 93 52 50 53 31 01                                // .RPS1.

        Scope (\_SB.PCI0.RP01.PXSX)
        {

    0181: 10 43 4B 5C 2F 04 5F 53 42 5F 50 43 49 30 52 50  // .CK\/._SB_PCI0RP
    0191: 30 31 50 58 53 58                                // 01PXSX

            Name (TURP, One)

    0197: 08 54 55 52 50 01                                // .TURP.

            Device (TBDU)
            {

    019D: 5B 82 46 49 54 42 44 55                          // [.FITBDU

                Name (_ADR, 0x00020000)  // _ADR: Address

    01A5: 08 5F 41 44 52 0C 00 00 02 00                    // ._ADR.....

                Device (XHC)
                {

    01AF: 5B 82 44 48 58 48 43 5F                          // [.DHXHC_

                    Name (_ADR, Zero)  // _ADR: Address

    01B7: 08 5F 41 44 52 00                                // ._ADR.

                    Device (RHUB)
                    {

    01BD: 5B 82 46 47 52 48 55 42                          // [.FGRHUB

                        Name (_ADR, Zero)  // _ADR: Address

    01C5: 08 5F 41 44 52 00                                // ._ADR.

                        Method (SLMS, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    01CB: 14 40 0C 53 4C 4D 53 09 79 54 55 52 50 0A 02 60  // .@.SLMS.yTURP..`
    01DB: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    01DF: A0 19 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    01EB: 93 68 54 50 31 54                                // .hTP1T

                                Return (
    01F1: A4                                               // .

(TP1D & One))
                            }

    01F2: 7B 54 50 31 44 01 00                             // {TP1D..

                            ElseIf
    01F9: A1 42 09                                         // .B.

 ((((TP2D >> One) == Local0) && 
    01FC: A0 19 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    0208: 93 68 54 50 32 54                                // .hTP2T

                                Return (
    020E: A4                                               // .

(TP2D & One))
                            }

    020F: 7B 54 50 32 44 01 00                             // {TP2D..

                            ElseIf
    0216: A1 45 07                                         // .E.

 ((((TP3D >> One) == Local0) && 
    0219: A0 19 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    0225: 93 68 54 50 33 54                                // .hTP3T

                                Return (
    022B: A4                                               // .

(TP3D & One))
                            }

    022C: 7B 54 50 33 44 01 00                             // {TP3D..

                            ElseIf
    0233: A1 48 05                                         // .H.

 ((((TP4D >> One) == Local0) && 
    0236: A0 19 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    0242: 93 68 54 50 34 54                                // .hTP4T

                                Return (
    0248: A4                                               // .

(TP4D & One))
                            }

    0249: 7B 54 50 34 44 01 00                             // {TP4D..

                            ElseIf
    0250: A1 3B                                            // .;

 ((((TP5D >> One) == Local0) && 
    0252: A0 19 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    025E: 93 68 54 50 35 54                                // .hTP5T

                                Return (
    0264: A4                                               // .

(TP5D & One))
                            }

    0265: 7B 54 50 35 44 01 00                             // {TP5D..

                            ElseIf
    026C: A1 1F                                            // ..

 ((((TP6D >> One) == Local0) && 
    026E: A0 19 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    027A: 93 68 54 50 36 54                                // .hTP6T

                                Return (
    0280: A4                                               // .

(TP6D & One))
                            }

    0281: 7B 54 50 36 44 01 00                             // {TP6D..

                            Else
                            {

    0288: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    028A: A4 00                                            // ..

                        Method (FPCP, 2, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    028C: 14 45 11 46 50 43 50 0A 79 54 55 52 50 0A 02 60  // .E.FPCP.yTURP..`
    029C: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    02A0: A0 23 90 93 7A 54 50 31 44 01 00 60              // .#..zTP1D..`

(Arg0 == TP1T)))
                            {

    02AC: 93 68 54 50 31 54                                // .hTP1T

                                Return (\_SB.UBTC.RUCC (One, Arg1))
                            }

    02B2: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    02C2: 01 69                                            // .i

                            ElseIf
    02C4: A1 4D 0D                                         // .M.

 ((((TP2D >> One) == Local0) && 
    02C7: A0 24 90 93 7A 54 50 32 44 01 00 60              // .$..zTP2D..`

(Arg0 == TP2T)))
                            {

    02D3: 93 68 54 50 32 54                                // .hTP2T

                                Return (\_SB.UBTC.RUCC (0x02, Arg1))
                            }

    02D9: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    02E9: 0A 02 69                                         // ..i

                            ElseIf
    02EC: A1 45 0B                                         // .E.

 ((((TP3D >> One) == Local0) && 
    02EF: A0 24 90 93 7A 54 50 33 44 01 00 60              // .$..zTP3D..`

(Arg0 == TP3T)))
                            {

    02FB: 93 68 54 50 33 54                                // .hTP3T

                                Return (\_SB.UBTC.RUCC (0x03, Arg1))
                            }

    0301: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0311: 0A 03 69                                         // ..i

                            ElseIf
    0314: A1 4D 08                                         // .M.

 ((((TP4D >> One) == Local0) && 
    0317: A0 24 90 93 7A 54 50 34 44 01 00 60              // .$..zTP4D..`

(Arg0 == TP4T)))
                            {

    0323: 93 68 54 50 34 54                                // .hTP4T

                                Return (\_SB.UBTC.RUCC (0x04, Arg1))
                            }

    0329: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0339: 0A 04 69                                         // ..i

                            ElseIf
    033C: A1 45 06                                         // .E.

 ((((TP5D >> One) == Local0) && 
    033F: A0 24 90 93 7A 54 50 35 44 01 00 60              // .$..zTP5D..`

(Arg0 == TP5T)))
                            {

    034B: 93 68 54 50 35 54                                // .hTP5T

                                Return (\_SB.UBTC.RUCC (0x05, Arg1))
                            }

    0351: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0361: 0A 05 69                                         // ..i

                            ElseIf
    0364: A1 3D                                            // .=

 ((((TP6D >> One) == Local0) && 
    0366: A0 24 90 93 7A 54 50 36 44 01 00 60              // .$..zTP6D..`

(Arg0 == TP6T)))
                            {

    0372: 93 68 54 50 36 54                                // .hTP6T

                                Return (\_SB.UBTC.RUCC (0x06, Arg1))
                            }

    0378: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0388: 0A 06 69                                         // ..i

                            ElseIf
    038B: A1 16                                            // ..

 ((Arg1 == One))
                            {

    038D: A0 0B 93 69 01                                   // ...i.

                                Return (TUPC (Zero, Zero))
                            }

    0392: A4 54 55 50 43 00 00                             // .TUPC..

                            Else
                            {

    0399: A1 08                                            // ..

                                Return (TPLD (Zero, Zero))
                            }
                        }


    039B: A4 54 50 4C 44 00 00                             // .TPLD..

                        Method (FPSP, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    03A2: 14 4C 09 46 50 53 50 09 79 54 55 52 50 0A 02 60  // .L.FPSP.yTURP..`
    03B2: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    03B6: A0 13 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    03C2: 93 68 54 50 31 54                                // .hTP1T

                                Return (One)
                            }

    03C8: A4 01                                            // ..

                            ElseIf
    03CA: A1 44 07                                         // .D.

 ((((TP2D >> One) == Local0) && 
    03CD: A0 13 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    03D9: 93 68 54 50 32 54                                // .hTP2T

                                Return (One)
                            }

    03DF: A4 01                                            // ..

                            ElseIf
    03E1: A1 4D 05                                         // .M.

 ((((TP3D >> One) == Local0) && 
    03E4: A0 13 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    03F0: 93 68 54 50 33 54                                // .hTP3T

                                Return (One)
                            }

    03F6: A4 01                                            // ..

                            ElseIf
    03F8: A1 46 04                                         // .F.

 ((((TP4D >> One) == Local0) && 
    03FB: A0 13 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    0407: 93 68 54 50 34 54                                // .hTP4T

                                Return (One)
                            }

    040D: A4 01                                            // ..

                            ElseIf
    040F: A1 2F                                            // ./

 ((((TP5D >> One) == Local0) && 
    0411: A0 13 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    041D: 93 68 54 50 35 54                                // .hTP5T

                                Return (One)
                            }

    0423: A4 01                                            // ..

                            ElseIf
    0425: A1 19                                            // ..

 ((((TP6D >> One) == Local0) && 
    0427: A0 13 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    0433: 93 68 54 50 36 54                                // .hTP6T

                                Return (One)
                            }

    0439: A4 01                                            // ..

                            Else
                            {

    043B: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    043D: A4 00                                            // ..

                        Method (TPLD, 2, Serialized)
                        {

    043F: 14 48 0A 54 50 4C 44 0A                          // .H.TPLD.

                            Name (PCKG, 
    0447: 08 50 43 4B 47                                   // .PCKG

Package (0x01)
                            {

    044C: 12 06 01                                         // ...

                                Buffer (0x10) {}
                            })

    044F: 11 03 0A 10                                      // ....

                            CreateField (DerefOf (
    0453: 5B 13 83                                         // [..

PCKG [Zero]), Zero, 0x07, REV)
                            REV = One

    0456: 88 50 43 4B 47 00 00 00 0A 07 52 45 56 5F 70 01  // .PCKG.....REV_p.
    0466: 52 45 56 5F                                      // REV_

                            CreateField (DerefOf (
    046A: 5B 13 83                                         // [..

PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0

    046D: 88 50 43 4B 47 00 00 0A 40 01 56 49 53 49 70 68  // .PCKG...@.VISIph
    047D: 56 49 53 49                                      // VISI

                            CreateField (DerefOf (
    0481: 5B 13 83                                         // [..

PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1

    0484: 88 50 43 4B 47 00 00 0A 57 0A 08 47 50 4F 53 70  // .PCKG...W..GPOSp
    0494: 69 47 50 4F 53                                   // iGPOS

                            CreateField (DerefOf (
    0499: 5B 13 83                                         // [..

PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One

    049C: 88 50 43 4B 47 00 00 0A 4A 0A 04 53 48 41 50 70  // .PCKG...J..SHAPp
    04AC: 01 53 48 41 50                                   // .SHAP

                            CreateField (DerefOf (
    04B1: 5B 13 83                                         // [..

PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08

    04B4: 88 50 43 4B 47 00 00 0A 20 0A 10 57 49 44 5F 70  // .PCKG... ..WID_p
    04C4: 0A 08 57 49 44 5F                                // ..WID_

                            CreateField (DerefOf (
    04CA: 5B 13 83                                         // [..

PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03

    04CD: 88 50 43 4B 47 00 00 0A 30 0A 10 48 47 54 5F 70  // .PCKG...0..HGT_p
    04DD: 0A 03 48 47 54 5F                                // ..HGT_

                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBDU.XHC_.RHUB.TPLD.PCKG */
                        }


    04E3: A4 50 43 4B 47                                   // .PCKG

                        Method (TUPC, 2, Serialized)
                        {

    04E8: 14 29 54 55 50 43 0A                             // .)TUPC.

                            Name (PCKG, 
    04EF: 08 50 43 4B 47                                   // .PCKG

Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            PCKG [One] = Arg1

    04F4: 12 06 04 01 00 00 00 70 68 88 50 43 4B 47 00 00  // .......ph.PCKG..
    0504: 70 69 88 50 43 4B 47 01 00                       // pi.PCKG..

                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBDU.XHC_.RHUB.TUPC.PCKG */
                        }


    050D: A4 50 43 4B 47                                   // .PCKG

                        If ((FPSP (One) == One))
                        {

    0512: A0 48 05 93 46 50 53 50 01 01                    // .H..FPSP..

                            Device (HS01)
                            {

    051C: 5B 82 4D 04 48 53 30 31                          // [.M.HS01

                                Name (_ADR, One)  // _ADR: Address

    0524: 08 5F 41 44 52 01                                // ._ADR.

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    052A: 14 1F 5F 55 50 43 00                             // .._UPC.

                                    If ((SLMS (One) == Zero))
                                    {

    0531: A0 0F 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, One))
                                    }

    053A: A4 46 50 43 50 01 01                             // .FPCP..

                                    Else
                                    {

    0541: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    0543: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    054A: 14 20 5F 50 4C 44 00                             // . _PLD.

                                    If ((SLMS (One) == Zero))
                                    {

    0551: A0 10 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, 0x02))
                                    }

    055A: A4 46 50 43 50 01 0A 02                          // .FPCP...

                                    Else
                                    {

    0562: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    0564: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (0x02) == One))
                        {

    056B: A0 4E 05 93 46 50 53 50 0A 02 01                 // .N..FPSP...

                            Device (HS02)
                            {

    0576: 5B 82 42 05 48 53 30 32                          // [.B.HS02

                                Name (_ADR, 0x02)  // _ADR: Address

    057E: 08 5F 41 44 52 0A 02                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0585: 14 21 5F 55 50 43 00                             // .!_UPC.

                                    If ((SLMS (0x02) == Zero))
                                    {

    058C: A0 11 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, One))
                                    }

    0596: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                    Else
                                    {

    059E: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    05A0: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    05A7: 14 22 5F 50 4C 44 00                             // ."_PLD.

                                    If ((SLMS (0x02) == Zero))
                                    {

    05AE: A0 12 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, 0x02))
                                    }

    05B8: A4 46 50 43 50 0A 02 0A 02                       // .FPCP....

                                    Else
                                    {

    05C1: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    05C3: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (One) == One))
                        {

    05CA: A0 33 93 46 50 53 50 01 01                       // .3.FPSP..

                            Device (SS01)
                            {

    05D3: 5B 82 29 53 53 30 31                             // [.)SS01

                                Name (_ADR, 0x03)  // _ADR: Address

    05DA: 08 5F 41 44 52 0A 03                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    05E1: 14 0D 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (One, One))
                                }


    05E8: A4 46 50 43 50 01 01                             // .FPCP..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    05EF: 14 0E 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (One, 0x02))
                                }
                            }
                        }


    05F6: A4 46 50 43 50 01 0A 02                          // .FPCP...

                        If ((FPSP (0x02) == One))
                        {

    05FE: A0 36 93 46 50 53 50 0A 02 01                    // .6.FPSP...

                            Device (SS02)
                            {

    0608: 5B 82 2B 53 53 30 32                             // [.+SS02

                                Name (_ADR, 0x04)  // _ADR: Address

    060F: 08 5F 41 44 52 0A 04                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0616: 14 0E 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (0x02, One))
                                }


    061D: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0625: 14 0F 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (0x02, 0x02))
                                }
                            }
                        }
                    }
                }
            }
        }
    }


    062C: A4 46 50 43 50 0A 02 0A 02                       // .FPCP....

    If (((TBTS == One) && 
    0635: A0 4D 4C 90 93 54 42 54 53 01                    // .ML..TBTS.

((RPS0 == 0x05) || 
    063F: 91 93 52 50 53 30 0A 05                          // ..RPS0..

(RPS1 == 0x05))))
    {

    0647: 93 52 50 53 31 0A 05                             // .RPS1..

        Scope (\_SB.PCI0.RP05.PXSX)
        {

    064E: 10 44 4B 5C 2F 04 5F 53 42 5F 50 43 49 30 52 50  // .DK\/._SB_PCI0RP
    065E: 30 35 50 58 53 58                                // 05PXSX

            Name (TURP, 0x05)

    0664: 08 54 55 52 50 0A 05                             // .TURP..

            Device (TBDU)
            {

    066B: 5B 82 46 49 54 42 44 55                          // [.FITBDU

                Name (_ADR, 0x00020000)  // _ADR: Address

    0673: 08 5F 41 44 52 0C 00 00 02 00                    // ._ADR.....

                Device (XHC)
                {

    067D: 5B 82 44 48 58 48 43 5F                          // [.DHXHC_

                    Name (_ADR, Zero)  // _ADR: Address

    0685: 08 5F 41 44 52 00                                // ._ADR.

                    Device (RHUB)
                    {

    068B: 5B 82 46 47 52 48 55 42                          // [.FGRHUB

                        Name (_ADR, Zero)  // _ADR: Address

    0693: 08 5F 41 44 52 00                                // ._ADR.

                        Method (SLMS, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    0699: 14 40 0C 53 4C 4D 53 09 79 54 55 52 50 0A 02 60  // .@.SLMS.yTURP..`
    06A9: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    06AD: A0 19 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    06B9: 93 68 54 50 31 54                                // .hTP1T

                                Return (
    06BF: A4                                               // .

(TP1D & One))
                            }

    06C0: 7B 54 50 31 44 01 00                             // {TP1D..

                            ElseIf
    06C7: A1 42 09                                         // .B.

 ((((TP2D >> One) == Local0) && 
    06CA: A0 19 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    06D6: 93 68 54 50 32 54                                // .hTP2T

                                Return (
    06DC: A4                                               // .

(TP2D & One))
                            }

    06DD: 7B 54 50 32 44 01 00                             // {TP2D..

                            ElseIf
    06E4: A1 45 07                                         // .E.

 ((((TP3D >> One) == Local0) && 
    06E7: A0 19 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    06F3: 93 68 54 50 33 54                                // .hTP3T

                                Return (
    06F9: A4                                               // .

(TP3D & One))
                            }

    06FA: 7B 54 50 33 44 01 00                             // {TP3D..

                            ElseIf
    0701: A1 48 05                                         // .H.

 ((((TP4D >> One) == Local0) && 
    0704: A0 19 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    0710: 93 68 54 50 34 54                                // .hTP4T

                                Return (
    0716: A4                                               // .

(TP4D & One))
                            }

    0717: 7B 54 50 34 44 01 00                             // {TP4D..

                            ElseIf
    071E: A1 3B                                            // .;

 ((((TP5D >> One) == Local0) && 
    0720: A0 19 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    072C: 93 68 54 50 35 54                                // .hTP5T

                                Return (
    0732: A4                                               // .

(TP5D & One))
                            }

    0733: 7B 54 50 35 44 01 00                             // {TP5D..

                            ElseIf
    073A: A1 1F                                            // ..

 ((((TP6D >> One) == Local0) && 
    073C: A0 19 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    0748: 93 68 54 50 36 54                                // .hTP6T

                                Return (
    074E: A4                                               // .

(TP6D & One))
                            }

    074F: 7B 54 50 36 44 01 00                             // {TP6D..

                            Else
                            {

    0756: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    0758: A4 00                                            // ..

                        Method (FPCP, 2, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    075A: 14 45 11 46 50 43 50 0A 79 54 55 52 50 0A 02 60  // .E.FPCP.yTURP..`
    076A: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    076E: A0 23 90 93 7A 54 50 31 44 01 00 60              // .#..zTP1D..`

(Arg0 == TP1T)))
                            {

    077A: 93 68 54 50 31 54                                // .hTP1T

                                Return (\_SB.UBTC.RUCC (One, Arg1))
                            }

    0780: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0790: 01 69                                            // .i

                            ElseIf
    0792: A1 4D 0D                                         // .M.

 ((((TP2D >> One) == Local0) && 
    0795: A0 24 90 93 7A 54 50 32 44 01 00 60              // .$..zTP2D..`

(Arg0 == TP2T)))
                            {

    07A1: 93 68 54 50 32 54                                // .hTP2T

                                Return (\_SB.UBTC.RUCC (0x02, Arg1))
                            }

    07A7: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    07B7: 0A 02 69                                         // ..i

                            ElseIf
    07BA: A1 45 0B                                         // .E.

 ((((TP3D >> One) == Local0) && 
    07BD: A0 24 90 93 7A 54 50 33 44 01 00 60              // .$..zTP3D..`

(Arg0 == TP3T)))
                            {

    07C9: 93 68 54 50 33 54                                // .hTP3T

                                Return (\_SB.UBTC.RUCC (0x03, Arg1))
                            }

    07CF: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    07DF: 0A 03 69                                         // ..i

                            ElseIf
    07E2: A1 4D 08                                         // .M.

 ((((TP4D >> One) == Local0) && 
    07E5: A0 24 90 93 7A 54 50 34 44 01 00 60              // .$..zTP4D..`

(Arg0 == TP4T)))
                            {

    07F1: 93 68 54 50 34 54                                // .hTP4T

                                Return (\_SB.UBTC.RUCC (0x04, Arg1))
                            }

    07F7: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0807: 0A 04 69                                         // ..i

                            ElseIf
    080A: A1 45 06                                         // .E.

 ((((TP5D >> One) == Local0) && 
    080D: A0 24 90 93 7A 54 50 35 44 01 00 60              // .$..zTP5D..`

(Arg0 == TP5T)))
                            {

    0819: 93 68 54 50 35 54                                // .hTP5T

                                Return (\_SB.UBTC.RUCC (0x05, Arg1))
                            }

    081F: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    082F: 0A 05 69                                         // ..i

                            ElseIf
    0832: A1 3D                                            // .=

 ((((TP6D >> One) == Local0) && 
    0834: A0 24 90 93 7A 54 50 36 44 01 00 60              // .$..zTP6D..`

(Arg0 == TP6T)))
                            {

    0840: 93 68 54 50 36 54                                // .hTP6T

                                Return (\_SB.UBTC.RUCC (0x06, Arg1))
                            }

    0846: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0856: 0A 06 69                                         // ..i

                            ElseIf
    0859: A1 16                                            // ..

 ((Arg1 == One))
                            {

    085B: A0 0B 93 69 01                                   // ...i.

                                Return (TUPC (Zero, Zero))
                            }

    0860: A4 54 55 50 43 00 00                             // .TUPC..

                            Else
                            {

    0867: A1 08                                            // ..

                                Return (TPLD (Zero, Zero))
                            }
                        }


    0869: A4 54 50 4C 44 00 00                             // .TPLD..

                        Method (FPSP, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    0870: 14 4C 09 46 50 53 50 09 79 54 55 52 50 0A 02 60  // .L.FPSP.yTURP..`
    0880: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    0884: A0 13 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    0890: 93 68 54 50 31 54                                // .hTP1T

                                Return (One)
                            }

    0896: A4 01                                            // ..

                            ElseIf
    0898: A1 44 07                                         // .D.

 ((((TP2D >> One) == Local0) && 
    089B: A0 13 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    08A7: 93 68 54 50 32 54                                // .hTP2T

                                Return (One)
                            }

    08AD: A4 01                                            // ..

                            ElseIf
    08AF: A1 4D 05                                         // .M.

 ((((TP3D >> One) == Local0) && 
    08B2: A0 13 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    08BE: 93 68 54 50 33 54                                // .hTP3T

                                Return (One)
                            }

    08C4: A4 01                                            // ..

                            ElseIf
    08C6: A1 46 04                                         // .F.

 ((((TP4D >> One) == Local0) && 
    08C9: A0 13 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    08D5: 93 68 54 50 34 54                                // .hTP4T

                                Return (One)
                            }

    08DB: A4 01                                            // ..

                            ElseIf
    08DD: A1 2F                                            // ./

 ((((TP5D >> One) == Local0) && 
    08DF: A0 13 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    08EB: 93 68 54 50 35 54                                // .hTP5T

                                Return (One)
                            }

    08F1: A4 01                                            // ..

                            ElseIf
    08F3: A1 19                                            // ..

 ((((TP6D >> One) == Local0) && 
    08F5: A0 13 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    0901: 93 68 54 50 36 54                                // .hTP6T

                                Return (One)
                            }

    0907: A4 01                                            // ..

                            Else
                            {

    0909: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    090B: A4 00                                            // ..

                        Method (TPLD, 2, Serialized)
                        {

    090D: 14 48 0A 54 50 4C 44 0A                          // .H.TPLD.

                            Name (PCKG, 
    0915: 08 50 43 4B 47                                   // .PCKG

Package (0x01)
                            {

    091A: 12 06 01                                         // ...

                                Buffer (0x10) {}
                            })

    091D: 11 03 0A 10                                      // ....

                            CreateField (DerefOf (
    0921: 5B 13 83                                         // [..

PCKG [Zero]), Zero, 0x07, REV)
                            REV = One

    0924: 88 50 43 4B 47 00 00 00 0A 07 52 45 56 5F 70 01  // .PCKG.....REV_p.
    0934: 52 45 56 5F                                      // REV_

                            CreateField (DerefOf (
    0938: 5B 13 83                                         // [..

PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0

    093B: 88 50 43 4B 47 00 00 0A 40 01 56 49 53 49 70 68  // .PCKG...@.VISIph
    094B: 56 49 53 49                                      // VISI

                            CreateField (DerefOf (
    094F: 5B 13 83                                         // [..

PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1

    0952: 88 50 43 4B 47 00 00 0A 57 0A 08 47 50 4F 53 70  // .PCKG...W..GPOSp
    0962: 69 47 50 4F 53                                   // iGPOS

                            CreateField (DerefOf (
    0967: 5B 13 83                                         // [..

PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One

    096A: 88 50 43 4B 47 00 00 0A 4A 0A 04 53 48 41 50 70  // .PCKG...J..SHAPp
    097A: 01 53 48 41 50                                   // .SHAP

                            CreateField (DerefOf (
    097F: 5B 13 83                                         // [..

PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08

    0982: 88 50 43 4B 47 00 00 0A 20 0A 10 57 49 44 5F 70  // .PCKG... ..WID_p
    0992: 0A 08 57 49 44 5F                                // ..WID_

                            CreateField (DerefOf (
    0998: 5B 13 83                                         // [..

PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03

    099B: 88 50 43 4B 47 00 00 0A 30 0A 10 48 47 54 5F 70  // .PCKG...0..HGT_p
    09AB: 0A 03 48 47 54 5F                                // ..HGT_

                            Return (PCKG) /* \_SB_.PCI0.RP05.PXSX.TBDU.XHC_.RHUB.TPLD.PCKG */
                        }


    09B1: A4 50 43 4B 47                                   // .PCKG

                        Method (TUPC, 2, Serialized)
                        {

    09B6: 14 29 54 55 50 43 0A                             // .)TUPC.

                            Name (PCKG, 
    09BD: 08 50 43 4B 47                                   // .PCKG

Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            PCKG [One] = Arg1

    09C2: 12 06 04 01 00 00 00 70 68 88 50 43 4B 47 00 00  // .......ph.PCKG..
    09D2: 70 69 88 50 43 4B 47 01 00                       // pi.PCKG..

                            Return (PCKG) /* \_SB_.PCI0.RP05.PXSX.TBDU.XHC_.RHUB.TUPC.PCKG */
                        }


    09DB: A4 50 43 4B 47                                   // .PCKG

                        If ((FPSP (One) == One))
                        {

    09E0: A0 48 05 93 46 50 53 50 01 01                    // .H..FPSP..

                            Device (HS01)
                            {

    09EA: 5B 82 4D 04 48 53 30 31                          // [.M.HS01

                                Name (_ADR, One)  // _ADR: Address

    09F2: 08 5F 41 44 52 01                                // ._ADR.

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    09F8: 14 1F 5F 55 50 43 00                             // .._UPC.

                                    If ((SLMS (One) == Zero))
                                    {

    09FF: A0 0F 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, One))
                                    }

    0A08: A4 46 50 43 50 01 01                             // .FPCP..

                                    Else
                                    {

    0A0F: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    0A11: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0A18: 14 20 5F 50 4C 44 00                             // . _PLD.

                                    If ((SLMS (One) == Zero))
                                    {

    0A1F: A0 10 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, 0x02))
                                    }

    0A28: A4 46 50 43 50 01 0A 02                          // .FPCP...

                                    Else
                                    {

    0A30: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    0A32: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (0x02) == One))
                        {

    0A39: A0 4E 05 93 46 50 53 50 0A 02 01                 // .N..FPSP...

                            Device (HS02)
                            {

    0A44: 5B 82 42 05 48 53 30 32                          // [.B.HS02

                                Name (_ADR, 0x02)  // _ADR: Address

    0A4C: 08 5F 41 44 52 0A 02                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0A53: 14 21 5F 55 50 43 00                             // .!_UPC.

                                    If ((SLMS (0x02) == Zero))
                                    {

    0A5A: A0 11 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, One))
                                    }

    0A64: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                    Else
                                    {

    0A6C: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    0A6E: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0A75: 14 22 5F 50 4C 44 00                             // ."_PLD.

                                    If ((SLMS (0x02) == Zero))
                                    {

    0A7C: A0 12 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, 0x02))
                                    }

    0A86: A4 46 50 43 50 0A 02 0A 02                       // .FPCP....

                                    Else
                                    {

    0A8F: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    0A91: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (One) == One))
                        {

    0A98: A0 33 93 46 50 53 50 01 01                       // .3.FPSP..

                            Device (SS01)
                            {

    0AA1: 5B 82 29 53 53 30 31                             // [.)SS01

                                Name (_ADR, 0x03)  // _ADR: Address

    0AA8: 08 5F 41 44 52 0A 03                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0AAF: 14 0D 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (One, One))
                                }


    0AB6: A4 46 50 43 50 01 01                             // .FPCP..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0ABD: 14 0E 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (One, 0x02))
                                }
                            }
                        }


    0AC4: A4 46 50 43 50 01 0A 02                          // .FPCP...

                        If ((FPSP (0x02) == One))
                        {

    0ACC: A0 36 93 46 50 53 50 0A 02 01                    // .6.FPSP...

                            Device (SS02)
                            {

    0AD6: 5B 82 2B 53 53 30 32                             // [.+SS02

                                Name (_ADR, 0x04)  // _ADR: Address

    0ADD: 08 5F 41 44 52 0A 04                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0AE4: 14 0E 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (0x02, One))
                                }


    0AEB: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0AF3: 14 0F 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (0x02, 0x02))
                                }
                            }
                        }
                    }
                }
            }
        }
    }


    0AFA: A4 46 50 43 50 0A 02 0A 02                       // .FPCP....

    If (((TBTS == One) && 
    0B03: A0 4D 4C 90 93 54 42 54 53 01                    // .ML..TBTS.

((RPS0 == 0x09) || 
    0B0D: 91 93 52 50 53 30 0A 09                          // ..RPS0..

(RPS1 == 0x09))))
    {

    0B15: 93 52 50 53 31 0A 09                             // .RPS1..

        Scope (\_SB.PCI0.RP09.PXSX)
        {

    0B1C: 10 44 4B 5C 2F 04 5F 53 42 5F 50 43 49 30 52 50  // .DK\/._SB_PCI0RP
    0B2C: 30 39 50 58 53 58                                // 09PXSX

            Name (TURP, 0x09)

    0B32: 08 54 55 52 50 0A 09                             // .TURP..

            Device (TBDU)
            {

    0B39: 5B 82 46 49 54 42 44 55                          // [.FITBDU

                Name (_ADR, 0x00020000)  // _ADR: Address

    0B41: 08 5F 41 44 52 0C 00 00 02 00                    // ._ADR.....

                Device (XHC)
                {

    0B4B: 5B 82 44 48 58 48 43 5F                          // [.DHXHC_

                    Name (_ADR, Zero)  // _ADR: Address

    0B53: 08 5F 41 44 52 00                                // ._ADR.

                    Device (RHUB)
                    {

    0B59: 5B 82 46 47 52 48 55 42                          // [.FGRHUB

                        Name (_ADR, Zero)  // _ADR: Address

    0B61: 08 5F 41 44 52 00                                // ._ADR.

                        Method (SLMS, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    0B67: 14 40 0C 53 4C 4D 53 09 79 54 55 52 50 0A 02 60  // .@.SLMS.yTURP..`
    0B77: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    0B7B: A0 19 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    0B87: 93 68 54 50 31 54                                // .hTP1T

                                Return (
    0B8D: A4                                               // .

(TP1D & One))
                            }

    0B8E: 7B 54 50 31 44 01 00                             // {TP1D..

                            ElseIf
    0B95: A1 42 09                                         // .B.

 ((((TP2D >> One) == Local0) && 
    0B98: A0 19 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    0BA4: 93 68 54 50 32 54                                // .hTP2T

                                Return (
    0BAA: A4                                               // .

(TP2D & One))
                            }

    0BAB: 7B 54 50 32 44 01 00                             // {TP2D..

                            ElseIf
    0BB2: A1 45 07                                         // .E.

 ((((TP3D >> One) == Local0) && 
    0BB5: A0 19 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    0BC1: 93 68 54 50 33 54                                // .hTP3T

                                Return (
    0BC7: A4                                               // .

(TP3D & One))
                            }

    0BC8: 7B 54 50 33 44 01 00                             // {TP3D..

                            ElseIf
    0BCF: A1 48 05                                         // .H.

 ((((TP4D >> One) == Local0) && 
    0BD2: A0 19 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    0BDE: 93 68 54 50 34 54                                // .hTP4T

                                Return (
    0BE4: A4                                               // .

(TP4D & One))
                            }

    0BE5: 7B 54 50 34 44 01 00                             // {TP4D..

                            ElseIf
    0BEC: A1 3B                                            // .;

 ((((TP5D >> One) == Local0) && 
    0BEE: A0 19 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    0BFA: 93 68 54 50 35 54                                // .hTP5T

                                Return (
    0C00: A4                                               // .

(TP5D & One))
                            }

    0C01: 7B 54 50 35 44 01 00                             // {TP5D..

                            ElseIf
    0C08: A1 1F                                            // ..

 ((((TP6D >> One) == Local0) && 
    0C0A: A0 19 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    0C16: 93 68 54 50 36 54                                // .hTP6T

                                Return (
    0C1C: A4                                               // .

(TP6D & One))
                            }

    0C1D: 7B 54 50 36 44 01 00                             // {TP6D..

                            Else
                            {

    0C24: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    0C26: A4 00                                            // ..

                        Method (FPCP, 2, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    0C28: 14 45 11 46 50 43 50 0A 79 54 55 52 50 0A 02 60  // .E.FPCP.yTURP..`
    0C38: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    0C3C: A0 23 90 93 7A 54 50 31 44 01 00 60              // .#..zTP1D..`

(Arg0 == TP1T)))
                            {

    0C48: 93 68 54 50 31 54                                // .hTP1T

                                Return (\_SB.UBTC.RUCC (One, Arg1))
                            }

    0C4E: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0C5E: 01 69                                            // .i

                            ElseIf
    0C60: A1 4D 0D                                         // .M.

 ((((TP2D >> One) == Local0) && 
    0C63: A0 24 90 93 7A 54 50 32 44 01 00 60              // .$..zTP2D..`

(Arg0 == TP2T)))
                            {

    0C6F: 93 68 54 50 32 54                                // .hTP2T

                                Return (\_SB.UBTC.RUCC (0x02, Arg1))
                            }

    0C75: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0C85: 0A 02 69                                         // ..i

                            ElseIf
    0C88: A1 45 0B                                         // .E.

 ((((TP3D >> One) == Local0) && 
    0C8B: A0 24 90 93 7A 54 50 33 44 01 00 60              // .$..zTP3D..`

(Arg0 == TP3T)))
                            {

    0C97: 93 68 54 50 33 54                                // .hTP3T

                                Return (\_SB.UBTC.RUCC (0x03, Arg1))
                            }

    0C9D: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0CAD: 0A 03 69                                         // ..i

                            ElseIf
    0CB0: A1 4D 08                                         // .M.

 ((((TP4D >> One) == Local0) && 
    0CB3: A0 24 90 93 7A 54 50 34 44 01 00 60              // .$..zTP4D..`

(Arg0 == TP4T)))
                            {

    0CBF: 93 68 54 50 34 54                                // .hTP4T

                                Return (\_SB.UBTC.RUCC (0x04, Arg1))
                            }

    0CC5: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0CD5: 0A 04 69                                         // ..i

                            ElseIf
    0CD8: A1 45 06                                         // .E.

 ((((TP5D >> One) == Local0) && 
    0CDB: A0 24 90 93 7A 54 50 35 44 01 00 60              // .$..zTP5D..`

(Arg0 == TP5T)))
                            {

    0CE7: 93 68 54 50 35 54                                // .hTP5T

                                Return (\_SB.UBTC.RUCC (0x05, Arg1))
                            }

    0CED: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0CFD: 0A 05 69                                         // ..i

                            ElseIf
    0D00: A1 3D                                            // .=

 ((((TP6D >> One) == Local0) && 
    0D02: A0 24 90 93 7A 54 50 36 44 01 00 60              // .$..zTP6D..`

(Arg0 == TP6T)))
                            {

    0D0E: 93 68 54 50 36 54                                // .hTP6T

                                Return (\_SB.UBTC.RUCC (0x06, Arg1))
                            }

    0D14: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    0D24: 0A 06 69                                         // ..i

                            ElseIf
    0D27: A1 16                                            // ..

 ((Arg1 == One))
                            {

    0D29: A0 0B 93 69 01                                   // ...i.

                                Return (TUPC (Zero, Zero))
                            }

    0D2E: A4 54 55 50 43 00 00                             // .TUPC..

                            Else
                            {

    0D35: A1 08                                            // ..

                                Return (TPLD (Zero, Zero))
                            }
                        }


    0D37: A4 54 50 4C 44 00 00                             // .TPLD..

                        Method (FPSP, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    0D3E: 14 4C 09 46 50 53 50 09 79 54 55 52 50 0A 02 60  // .L.FPSP.yTURP..`
    0D4E: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    0D52: A0 13 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    0D5E: 93 68 54 50 31 54                                // .hTP1T

                                Return (One)
                            }

    0D64: A4 01                                            // ..

                            ElseIf
    0D66: A1 44 07                                         // .D.

 ((((TP2D >> One) == Local0) && 
    0D69: A0 13 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    0D75: 93 68 54 50 32 54                                // .hTP2T

                                Return (One)
                            }

    0D7B: A4 01                                            // ..

                            ElseIf
    0D7D: A1 4D 05                                         // .M.

 ((((TP3D >> One) == Local0) && 
    0D80: A0 13 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    0D8C: 93 68 54 50 33 54                                // .hTP3T

                                Return (One)
                            }

    0D92: A4 01                                            // ..

                            ElseIf
    0D94: A1 46 04                                         // .F.

 ((((TP4D >> One) == Local0) && 
    0D97: A0 13 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    0DA3: 93 68 54 50 34 54                                // .hTP4T

                                Return (One)
                            }

    0DA9: A4 01                                            // ..

                            ElseIf
    0DAB: A1 2F                                            // ./

 ((((TP5D >> One) == Local0) && 
    0DAD: A0 13 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    0DB9: 93 68 54 50 35 54                                // .hTP5T

                                Return (One)
                            }

    0DBF: A4 01                                            // ..

                            ElseIf
    0DC1: A1 19                                            // ..

 ((((TP6D >> One) == Local0) && 
    0DC3: A0 13 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    0DCF: 93 68 54 50 36 54                                // .hTP6T

                                Return (One)
                            }

    0DD5: A4 01                                            // ..

                            Else
                            {

    0DD7: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    0DD9: A4 00                                            // ..

                        Method (TPLD, 2, Serialized)
                        {

    0DDB: 14 48 0A 54 50 4C 44 0A                          // .H.TPLD.

                            Name (PCKG, 
    0DE3: 08 50 43 4B 47                                   // .PCKG

Package (0x01)
                            {

    0DE8: 12 06 01                                         // ...

                                Buffer (0x10) {}
                            })

    0DEB: 11 03 0A 10                                      // ....

                            CreateField (DerefOf (
    0DEF: 5B 13 83                                         // [..

PCKG [Zero]), Zero, 0x07, REV)
                            REV = One

    0DF2: 88 50 43 4B 47 00 00 00 0A 07 52 45 56 5F 70 01  // .PCKG.....REV_p.
    0E02: 52 45 56 5F                                      // REV_

                            CreateField (DerefOf (
    0E06: 5B 13 83                                         // [..

PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0

    0E09: 88 50 43 4B 47 00 00 0A 40 01 56 49 53 49 70 68  // .PCKG...@.VISIph
    0E19: 56 49 53 49                                      // VISI

                            CreateField (DerefOf (
    0E1D: 5B 13 83                                         // [..

PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1

    0E20: 88 50 43 4B 47 00 00 0A 57 0A 08 47 50 4F 53 70  // .PCKG...W..GPOSp
    0E30: 69 47 50 4F 53                                   // iGPOS

                            CreateField (DerefOf (
    0E35: 5B 13 83                                         // [..

PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One

    0E38: 88 50 43 4B 47 00 00 0A 4A 0A 04 53 48 41 50 70  // .PCKG...J..SHAPp
    0E48: 01 53 48 41 50                                   // .SHAP

                            CreateField (DerefOf (
    0E4D: 5B 13 83                                         // [..

PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08

    0E50: 88 50 43 4B 47 00 00 0A 20 0A 10 57 49 44 5F 70  // .PCKG... ..WID_p
    0E60: 0A 08 57 49 44 5F                                // ..WID_

                            CreateField (DerefOf (
    0E66: 5B 13 83                                         // [..

PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03

    0E69: 88 50 43 4B 47 00 00 0A 30 0A 10 48 47 54 5F 70  // .PCKG...0..HGT_p
    0E79: 0A 03 48 47 54 5F                                // ..HGT_

                            Return (PCKG) /* \_SB_.PCI0.RP09.PXSX.TBDU.XHC_.RHUB.TPLD.PCKG */
                        }


    0E7F: A4 50 43 4B 47                                   // .PCKG

                        Method (TUPC, 2, Serialized)
                        {

    0E84: 14 29 54 55 50 43 0A                             // .)TUPC.

                            Name (PCKG, 
    0E8B: 08 50 43 4B 47                                   // .PCKG

Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            PCKG [One] = Arg1

    0E90: 12 06 04 01 00 00 00 70 68 88 50 43 4B 47 00 00  // .......ph.PCKG..
    0EA0: 70 69 88 50 43 4B 47 01 00                       // pi.PCKG..

                            Return (PCKG) /* \_SB_.PCI0.RP09.PXSX.TBDU.XHC_.RHUB.TUPC.PCKG */
                        }


    0EA9: A4 50 43 4B 47                                   // .PCKG

                        If ((FPSP (One) == One))
                        {

    0EAE: A0 48 05 93 46 50 53 50 01 01                    // .H..FPSP..

                            Device (HS01)
                            {

    0EB8: 5B 82 4D 04 48 53 30 31                          // [.M.HS01

                                Name (_ADR, One)  // _ADR: Address

    0EC0: 08 5F 41 44 52 01                                // ._ADR.

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0EC6: 14 1F 5F 55 50 43 00                             // .._UPC.

                                    If ((SLMS (One) == Zero))
                                    {

    0ECD: A0 0F 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, One))
                                    }

    0ED6: A4 46 50 43 50 01 01                             // .FPCP..

                                    Else
                                    {

    0EDD: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    0EDF: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0EE6: 14 20 5F 50 4C 44 00                             // . _PLD.

                                    If ((SLMS (One) == Zero))
                                    {

    0EED: A0 10 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, 0x02))
                                    }

    0EF6: A4 46 50 43 50 01 0A 02                          // .FPCP...

                                    Else
                                    {

    0EFE: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    0F00: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (0x02) == One))
                        {

    0F07: A0 4E 05 93 46 50 53 50 0A 02 01                 // .N..FPSP...

                            Device (HS02)
                            {

    0F12: 5B 82 42 05 48 53 30 32                          // [.B.HS02

                                Name (_ADR, 0x02)  // _ADR: Address

    0F1A: 08 5F 41 44 52 0A 02                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0F21: 14 21 5F 55 50 43 00                             // .!_UPC.

                                    If ((SLMS (0x02) == Zero))
                                    {

    0F28: A0 11 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, One))
                                    }

    0F32: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                    Else
                                    {

    0F3A: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    0F3C: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0F43: 14 22 5F 50 4C 44 00                             // ."_PLD.

                                    If ((SLMS (0x02) == Zero))
                                    {

    0F4A: A0 12 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, 0x02))
                                    }

    0F54: A4 46 50 43 50 0A 02 0A 02                       // .FPCP....

                                    Else
                                    {

    0F5D: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    0F5F: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (One) == One))
                        {

    0F66: A0 33 93 46 50 53 50 01 01                       // .3.FPSP..

                            Device (SS01)
                            {

    0F6F: 5B 82 29 53 53 30 31                             // [.)SS01

                                Name (_ADR, 0x03)  // _ADR: Address

    0F76: 08 5F 41 44 52 0A 03                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0F7D: 14 0D 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (One, One))
                                }


    0F84: A4 46 50 43 50 01 01                             // .FPCP..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0F8B: 14 0E 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (One, 0x02))
                                }
                            }
                        }


    0F92: A4 46 50 43 50 01 0A 02                          // .FPCP...

                        If ((FPSP (0x02) == One))
                        {

    0F9A: A0 36 93 46 50 53 50 0A 02 01                    // .6.FPSP...

                            Device (SS02)
                            {

    0FA4: 5B 82 2B 53 53 30 32                             // [.+SS02

                                Name (_ADR, 0x04)  // _ADR: Address

    0FAB: 08 5F 41 44 52 0A 04                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    0FB2: 14 0E 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (0x02, One))
                                }


    0FB9: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    0FC1: 14 0F 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (0x02, 0x02))
                                }
                            }
                        }
                    }
                }
            }
        }
    }


    0FC8: A4 46 50 43 50 0A 02 0A 02                       // .FPCP....

    If (((TBTS == One) && 
    0FD1: A0 4D 4C 90 93 54 42 54 53 01                    // .ML..TBTS.

((RPS0 == 0x15) || 
    0FDB: 91 93 52 50 53 30 0A 15                          // ..RPS0..

(RPS1 == 0x15))))
    {

    0FE3: 93 52 50 53 31 0A 15                             // .RPS1..

        Scope (\_SB.PCI0.RP21.PXSX)
        {

    0FEA: 10 44 4B 5C 2F 04 5F 53 42 5F 50 43 49 30 52 50  // .DK\/._SB_PCI0RP
    0FFA: 32 31 50 58 53 58                                // 21PXSX

            Name (TURP, 0x15)

    1000: 08 54 55 52 50 0A 15                             // .TURP..

            Device (TBDU)
            {

    1007: 5B 82 46 49 54 42 44 55                          // [.FITBDU

                Name (_ADR, 0x00020000)  // _ADR: Address

    100F: 08 5F 41 44 52 0C 00 00 02 00                    // ._ADR.....

                Device (XHC)
                {

    1019: 5B 82 44 48 58 48 43 5F                          // [.DHXHC_

                    Name (_ADR, Zero)  // _ADR: Address

    1021: 08 5F 41 44 52 00                                // ._ADR.

                    Device (RHUB)
                    {

    1027: 5B 82 46 47 52 48 55 42                          // [.FGRHUB

                        Name (_ADR, Zero)  // _ADR: Address

    102F: 08 5F 41 44 52 00                                // ._ADR.

                        Method (SLMS, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    1035: 14 40 0C 53 4C 4D 53 09 79 54 55 52 50 0A 02 60  // .@.SLMS.yTURP..`
    1045: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    1049: A0 19 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    1055: 93 68 54 50 31 54                                // .hTP1T

                                Return (
    105B: A4                                               // .

(TP1D & One))
                            }

    105C: 7B 54 50 31 44 01 00                             // {TP1D..

                            ElseIf
    1063: A1 42 09                                         // .B.

 ((((TP2D >> One) == Local0) && 
    1066: A0 19 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    1072: 93 68 54 50 32 54                                // .hTP2T

                                Return (
    1078: A4                                               // .

(TP2D & One))
                            }

    1079: 7B 54 50 32 44 01 00                             // {TP2D..

                            ElseIf
    1080: A1 45 07                                         // .E.

 ((((TP3D >> One) == Local0) && 
    1083: A0 19 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    108F: 93 68 54 50 33 54                                // .hTP3T

                                Return (
    1095: A4                                               // .

(TP3D & One))
                            }

    1096: 7B 54 50 33 44 01 00                             // {TP3D..

                            ElseIf
    109D: A1 48 05                                         // .H.

 ((((TP4D >> One) == Local0) && 
    10A0: A0 19 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    10AC: 93 68 54 50 34 54                                // .hTP4T

                                Return (
    10B2: A4                                               // .

(TP4D & One))
                            }

    10B3: 7B 54 50 34 44 01 00                             // {TP4D..

                            ElseIf
    10BA: A1 3B                                            // .;

 ((((TP5D >> One) == Local0) && 
    10BC: A0 19 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    10C8: 93 68 54 50 35 54                                // .hTP5T

                                Return (
    10CE: A4                                               // .

(TP5D & One))
                            }

    10CF: 7B 54 50 35 44 01 00                             // {TP5D..

                            ElseIf
    10D6: A1 1F                                            // ..

 ((((TP6D >> One) == Local0) && 
    10D8: A0 19 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    10E4: 93 68 54 50 36 54                                // .hTP6T

                                Return (
    10EA: A4                                               // .

(TP6D & One))
                            }

    10EB: 7B 54 50 36 44 01 00                             // {TP6D..

                            Else
                            {

    10F2: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    10F4: A4 00                                            // ..

                        Method (FPCP, 2, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    10F6: 14 45 11 46 50 43 50 0A 79 54 55 52 50 0A 02 60  // .E.FPCP.yTURP..`
    1106: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    110A: A0 23 90 93 7A 54 50 31 44 01 00 60              // .#..zTP1D..`

(Arg0 == TP1T)))
                            {

    1116: 93 68 54 50 31 54                                // .hTP1T

                                Return (\_SB.UBTC.RUCC (One, Arg1))
                            }

    111C: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    112C: 01 69                                            // .i

                            ElseIf
    112E: A1 4D 0D                                         // .M.

 ((((TP2D >> One) == Local0) && 
    1131: A0 24 90 93 7A 54 50 32 44 01 00 60              // .$..zTP2D..`

(Arg0 == TP2T)))
                            {

    113D: 93 68 54 50 32 54                                // .hTP2T

                                Return (\_SB.UBTC.RUCC (0x02, Arg1))
                            }

    1143: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    1153: 0A 02 69                                         // ..i

                            ElseIf
    1156: A1 45 0B                                         // .E.

 ((((TP3D >> One) == Local0) && 
    1159: A0 24 90 93 7A 54 50 33 44 01 00 60              // .$..zTP3D..`

(Arg0 == TP3T)))
                            {

    1165: 93 68 54 50 33 54                                // .hTP3T

                                Return (\_SB.UBTC.RUCC (0x03, Arg1))
                            }

    116B: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    117B: 0A 03 69                                         // ..i

                            ElseIf
    117E: A1 4D 08                                         // .M.

 ((((TP4D >> One) == Local0) && 
    1181: A0 24 90 93 7A 54 50 34 44 01 00 60              // .$..zTP4D..`

(Arg0 == TP4T)))
                            {

    118D: 93 68 54 50 34 54                                // .hTP4T

                                Return (\_SB.UBTC.RUCC (0x04, Arg1))
                            }

    1193: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    11A3: 0A 04 69                                         // ..i

                            ElseIf
    11A6: A1 45 06                                         // .E.

 ((((TP5D >> One) == Local0) && 
    11A9: A0 24 90 93 7A 54 50 35 44 01 00 60              // .$..zTP5D..`

(Arg0 == TP5T)))
                            {

    11B5: 93 68 54 50 35 54                                // .hTP5T

                                Return (\_SB.UBTC.RUCC (0x05, Arg1))
                            }

    11BB: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    11CB: 0A 05 69                                         // ..i

                            ElseIf
    11CE: A1 3D                                            // .=

 ((((TP6D >> One) == Local0) && 
    11D0: A0 24 90 93 7A 54 50 36 44 01 00 60              // .$..zTP6D..`

(Arg0 == TP6T)))
                            {

    11DC: 93 68 54 50 36 54                                // .hTP6T

                                Return (\_SB.UBTC.RUCC (0x06, Arg1))
                            }

    11E2: A4 5C 2F 03 5F 53 42 5F 55 42 54 43 52 55 43 43  // .\/._SB_UBTCRUCC
    11F2: 0A 06 69                                         // ..i

                            ElseIf
    11F5: A1 16                                            // ..

 ((Arg1 == One))
                            {

    11F7: A0 0B 93 69 01                                   // ...i.

                                Return (TUPC (Zero, Zero))
                            }

    11FC: A4 54 55 50 43 00 00                             // .TUPC..

                            Else
                            {

    1203: A1 08                                            // ..

                                Return (TPLD (Zero, Zero))
                            }
                        }


    1205: A4 54 50 4C 44 00 00                             // .TPLD..

                        Method (FPSP, 1, Serialized)
                        {
                            Local0 = (TURP << 0x02)
                            Local0 |= One

    120C: 14 4C 09 46 50 53 50 09 79 54 55 52 50 0A 02 60  // .L.FPSP.yTURP..`
    121C: 7D 60 01 60                                      // }`.`

                            If ((((TP1D >> One) == Local0) && 
    1220: A0 13 90 93 7A 54 50 31 44 01 00 60              // ....zTP1D..`

(Arg0 == TP1T)))
                            {

    122C: 93 68 54 50 31 54                                // .hTP1T

                                Return (One)
                            }

    1232: A4 01                                            // ..

                            ElseIf
    1234: A1 44 07                                         // .D.

 ((((TP2D >> One) == Local0) && 
    1237: A0 13 90 93 7A 54 50 32 44 01 00 60              // ....zTP2D..`

(Arg0 == TP2T)))
                            {

    1243: 93 68 54 50 32 54                                // .hTP2T

                                Return (One)
                            }

    1249: A4 01                                            // ..

                            ElseIf
    124B: A1 4D 05                                         // .M.

 ((((TP3D >> One) == Local0) && 
    124E: A0 13 90 93 7A 54 50 33 44 01 00 60              // ....zTP3D..`

(Arg0 == TP3T)))
                            {

    125A: 93 68 54 50 33 54                                // .hTP3T

                                Return (One)
                            }

    1260: A4 01                                            // ..

                            ElseIf
    1262: A1 46 04                                         // .F.

 ((((TP4D >> One) == Local0) && 
    1265: A0 13 90 93 7A 54 50 34 44 01 00 60              // ....zTP4D..`

(Arg0 == TP4T)))
                            {

    1271: 93 68 54 50 34 54                                // .hTP4T

                                Return (One)
                            }

    1277: A4 01                                            // ..

                            ElseIf
    1279: A1 2F                                            // ./

 ((((TP5D >> One) == Local0) && 
    127B: A0 13 90 93 7A 54 50 35 44 01 00 60              // ....zTP5D..`

(Arg0 == TP5T)))
                            {

    1287: 93 68 54 50 35 54                                // .hTP5T

                                Return (One)
                            }

    128D: A4 01                                            // ..

                            ElseIf
    128F: A1 19                                            // ..

 ((((TP6D >> One) == Local0) && 
    1291: A0 13 90 93 7A 54 50 36 44 01 00 60              // ....zTP6D..`

(Arg0 == TP6T)))
                            {

    129D: 93 68 54 50 36 54                                // .hTP6T

                                Return (One)
                            }

    12A3: A4 01                                            // ..

                            Else
                            {

    12A5: A1 03                                            // ..

                                Return (Zero)
                            }
                        }


    12A7: A4 00                                            // ..

                        Method (TPLD, 2, Serialized)
                        {

    12A9: 14 48 0A 54 50 4C 44 0A                          // .H.TPLD.

                            Name (PCKG, 
    12B1: 08 50 43 4B 47                                   // .PCKG

Package (0x01)
                            {

    12B6: 12 06 01                                         // ...

                                Buffer (0x10) {}
                            })

    12B9: 11 03 0A 10                                      // ....

                            CreateField (DerefOf (
    12BD: 5B 13 83                                         // [..

PCKG [Zero]), Zero, 0x07, REV)
                            REV = One

    12C0: 88 50 43 4B 47 00 00 00 0A 07 52 45 56 5F 70 01  // .PCKG.....REV_p.
    12D0: 52 45 56 5F                                      // REV_

                            CreateField (DerefOf (
    12D4: 5B 13 83                                         // [..

PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0

    12D7: 88 50 43 4B 47 00 00 0A 40 01 56 49 53 49 70 68  // .PCKG...@.VISIph
    12E7: 56 49 53 49                                      // VISI

                            CreateField (DerefOf (
    12EB: 5B 13 83                                         // [..

PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1

    12EE: 88 50 43 4B 47 00 00 0A 57 0A 08 47 50 4F 53 70  // .PCKG...W..GPOSp
    12FE: 69 47 50 4F 53                                   // iGPOS

                            CreateField (DerefOf (
    1303: 5B 13 83                                         // [..

PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One

    1306: 88 50 43 4B 47 00 00 0A 4A 0A 04 53 48 41 50 70  // .PCKG...J..SHAPp
    1316: 01 53 48 41 50                                   // .SHAP

                            CreateField (DerefOf (
    131B: 5B 13 83                                         // [..

PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08

    131E: 88 50 43 4B 47 00 00 0A 20 0A 10 57 49 44 5F 70  // .PCKG... ..WID_p
    132E: 0A 08 57 49 44 5F                                // ..WID_

                            CreateField (DerefOf (
    1334: 5B 13 83                                         // [..

PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03

    1337: 88 50 43 4B 47 00 00 0A 30 0A 10 48 47 54 5F 70  // .PCKG...0..HGT_p
    1347: 0A 03 48 47 54 5F                                // ..HGT_

                            Return (PCKG) /* \_SB_.PCI0.RP21.PXSX.TBDU.XHC_.RHUB.TPLD.PCKG */
                        }


    134D: A4 50 43 4B 47                                   // .PCKG

                        Method (TUPC, 2, Serialized)
                        {

    1352: 14 29 54 55 50 43 0A                             // .)TUPC.

                            Name (PCKG, 
    1359: 08 50 43 4B 47                                   // .PCKG

Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            PCKG [One] = Arg1

    135E: 12 06 04 01 00 00 00 70 68 88 50 43 4B 47 00 00  // .......ph.PCKG..
    136E: 70 69 88 50 43 4B 47 01 00                       // pi.PCKG..

                            Return (PCKG) /* \_SB_.PCI0.RP21.PXSX.TBDU.XHC_.RHUB.TUPC.PCKG */
                        }


    1377: A4 50 43 4B 47                                   // .PCKG

                        If ((FPSP (One) == One))
                        {

    137C: A0 48 05 93 46 50 53 50 01 01                    // .H..FPSP..

                            Device (HS01)
                            {

    1386: 5B 82 4D 04 48 53 30 31                          // [.M.HS01

                                Name (_ADR, One)  // _ADR: Address

    138E: 08 5F 41 44 52 01                                // ._ADR.

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    1394: 14 1F 5F 55 50 43 00                             // .._UPC.

                                    If ((SLMS (One) == Zero))
                                    {

    139B: A0 0F 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, One))
                                    }

    13A4: A4 46 50 43 50 01 01                             // .FPCP..

                                    Else
                                    {

    13AB: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    13AD: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    13B4: 14 20 5F 50 4C 44 00                             // . _PLD.

                                    If ((SLMS (One) == Zero))
                                    {

    13BB: A0 10 93 53 4C 4D 53 01 00                       // ...SLMS..

                                        Return (FPCP (One, 0x02))
                                    }

    13C4: A4 46 50 43 50 01 0A 02                          // .FPCP...

                                    Else
                                    {

    13CC: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    13CE: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (0x02) == One))
                        {

    13D5: A0 4E 05 93 46 50 53 50 0A 02 01                 // .N..FPSP...

                            Device (HS02)
                            {

    13E0: 5B 82 42 05 48 53 30 32                          // [.B.HS02

                                Name (_ADR, 0x02)  // _ADR: Address

    13E8: 08 5F 41 44 52 0A 02                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    13EF: 14 21 5F 55 50 43 00                             // .!_UPC.

                                    If ((SLMS (0x02) == Zero))
                                    {

    13F6: A0 11 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, One))
                                    }

    1400: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                    Else
                                    {

    1408: A1 08                                            // ..

                                        Return (TUPC (Zero, Zero))
                                    }
                                }


    140A: A4 54 55 50 43 00 00                             // .TUPC..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    1411: 14 22 5F 50 4C 44 00                             // ."_PLD.

                                    If ((SLMS (0x02) == Zero))
                                    {

    1418: A0 12 93 53 4C 4D 53 0A 02 00                    // ...SLMS...

                                        Return (FPCP (0x02, 0x02))
                                    }

    1422: A4 46 50 43 50 0A 02 0A 02                       // .FPCP....

                                    Else
                                    {

    142B: A1 08                                            // ..

                                        Return (TPLD (Zero, Zero))
                                    }
                                }
                            }
                        }


    142D: A4 54 50 4C 44 00 00                             // .TPLD..

                        If ((FPSP (One) == One))
                        {

    1434: A0 33 93 46 50 53 50 01 01                       // .3.FPSP..

                            Device (SS01)
                            {

    143D: 5B 82 29 53 53 30 31                             // [.)SS01

                                Name (_ADR, 0x03)  // _ADR: Address

    1444: 08 5F 41 44 52 0A 03                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    144B: 14 0D 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (One, One))
                                }


    1452: A4 46 50 43 50 01 01                             // .FPCP..

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    1459: 14 0E 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (One, 0x02))
                                }
                            }
                        }


    1460: A4 46 50 43 50 01 0A 02                          // .FPCP...

                        If ((FPSP (0x02) == One))
                        {

    1468: A0 36 93 46 50 53 50 0A 02 01                    // .6.FPSP...

                            Device (SS02)
                            {

    1472: 5B 82 2B 53 53 30 32                             // [.+SS02

                                Name (_ADR, 0x04)  // _ADR: Address

    1479: 08 5F 41 44 52 0A 04                             // ._ADR..

                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {

    1480: 14 0E 5F 55 50 43 00                             // .._UPC.

                                    Return (FPCP (0x02, One))
                                }


    1487: A4 46 50 43 50 0A 02 01                          // .FPCP...

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {

    148F: 14 0F 5F 50 4C 44 00                             // .._PLD.

                                    Return (FPCP (0x02, 0x02))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}



Table Header:
Table Body (Length 0x149F)
