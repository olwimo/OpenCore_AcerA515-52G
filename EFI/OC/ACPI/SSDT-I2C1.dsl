DefinitionBlock ("", "SSDT", 2, "hack", "I2C1", 0x00000000)
{
    External(_SB_.PCI0.I2C1, DeviceObj)

    External(SSD1, IntObj)
    External(SSH1, IntObj)
    External(SSL1, IntObj)
    External(FMD1, IntObj)
    External(FMH1, IntObj)
    External(FML1, IntObj)

    Scope(_SB.PCI0.I2C1)
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
                Return (PKG3 (SSH1, SSL1, SSD1))
            }

            Method (FMCN, 0, NotSerialized)
            {
                Return (PKG3 (FMH1, FML1, FMD1))
            }
        }
    }
}
