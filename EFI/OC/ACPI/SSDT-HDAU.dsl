
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_HDAU", 0)
{
#endif
    External(_SB.PCI0, DeviceObj)
    External(_SB.PCI0.HDAS, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (HDAU)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If (HDAS)
                {
                    Return (HDAS)
                }
                Else
                {
                    Return (0x001F0003)
                }
            }

            Method(_DSM, 4, NotSerialized)
            {
                If (!Arg2) { Return (Buffer() { 0x03 } ) }
                Local0 = Package()
                {
                    "RM,device-id", Buffer(4) { 0xC8, 0x9D, 0x00, 0x00 },
                    "layout-id", Buffer(4) { 0x47, 0x00, 0x00, 0x00 },
                    "hda-gfx", Buffer() { "onboard-1" },
                    "no-controller-patch", Buffer() { 0x01, 0x00, 0x00, 0x00 }, // disables automatic AppleALC patching
                }
                Return(Local0)
            }
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
