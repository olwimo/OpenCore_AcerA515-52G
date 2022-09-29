DefinitionBlock ("", "SSDT", 2, "hack", "I2C", 0x00000000)
{
    External(_SB_.PCI0.I2C0, DeviceObj)

    External(SSD0, IntObj)
    External(SSH0, IntObj)
    External(SSL0, IntObj)
    External(FMD0, IntObj)
    External(FMH0, IntObj)
    External(FML0, IntObj)

    Scope(_SB.PCI0.I2C0)
    {
        If (_OSI ("Darwin"))
        {
            Method (PKG3, 3, Serialized)
            {
                Name (PKG, Package (0x03)
                {
                    Zero, 
                    Zero, 
                    Zero
                })
                Store (Arg0, Index (PKG, Zero))
                Store (Arg1, Index (PKG, One))
                Store (Arg2, Index (PKG, 0x02))
                Return (PKG)
            }

            Method (SSCN, 0, NotSerialized)
            {
                Return (PKG3 (SSH0, SSL0, SSD0))
            }

            Method (FMCN, 0, NotSerialized)
            {
                Return (PKG3 (FMH0, FML0, FMD0))
            }
        }
    }
}
