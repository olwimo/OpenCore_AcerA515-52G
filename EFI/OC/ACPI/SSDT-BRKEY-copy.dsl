/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BRKEY.aml, Wed Dec 23 04:34:17 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000109 (265)
 *     Revision         0x02
 *     Checksum         0x89
 *     OEM ID           "hack"
 *     OEM Table ID     "BrightFN"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "BrightFN", 0x00000000)
{
    External (\_SB.PCI0.LPCB.EC0_, DeviceObj)
    External (\_SB.PCI0.LPCB.PS2K, DeviceObj)

    If (_OSI ("Darwin"))
    {
        Scope (\_SB.PCI0.LPCB.EC0)
        {
            // Brightness Down
            Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
                // Notify (\_SB.PCI0.LPCB.PS2K, 0x0205)
                // Notify (\_SB.PCI0.LPCB.PS2K, 0x0285)
            }

            // Brightness Up
            Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
                // Notify (\_SB.PCI0.LPCB.PS2K, 0x0206)
                // Notify (\_SB.PCI0.LPCB.PS2K, 0x0286)
            }
        }
    }
}

