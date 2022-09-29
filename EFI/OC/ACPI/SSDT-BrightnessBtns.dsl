DefinitionBlock ("", "SSDT", 2, "ACDT", "_BBTNS", 0x00000000)
{
//    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (XQ11, MethodObj)
    External (XQ12, MethodObj)

    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
    {
        // Brightness Up
        //Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)
        Notify(\_SB.PCI0.LPCB.PS2K, 0x0206)
        Notify(\_SB.PCI0.LPCB.PS2K, 0x0286)
        XQ11()
    }
    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
    {
        // Brightness Down
        //Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)
        Notify(\_SB.PCI0.LPCB.PS2K, 0x0205)
        Notify(\_SB.PCI0.LPCB.PS2K, 0x0285)
        XQ12()
    }
}
