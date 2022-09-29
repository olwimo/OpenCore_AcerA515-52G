// Source: https://github.com/daliansky/OC-little
DefinitionBlock("", "SSDT", 2, "DRTNIA", "GPI0", 0)
{
    //External(GPHD, FieldUnitObj)
    //External(PCHS, FieldUnitObj)
    External(OSYS, FieldUnitObj)
    //External(S0ID, FieldUnitObj)
    //External(_SB.PCI0, DeviceObj)
    //External (_SB_.PCI0.XINI, MethodObj)
    
    Scope (\)
    {
        Method (_INI, 0, Serialized) // _INI: Initialize
        {
            //\_SB.PCI0.XINI ()
            If (_OSI ("Darwin"))
            {
                OSYS = 0x07DF
            }
            Else
            {
                
            }
        }
        //If (_OSI ("Darwin"))
        //{
        //    GPHD = Zero
        //    PCHS = One
        //    OSYS = 0x07DF
        //    S0ID = One
        //}
        //Else
        //{
        //    
        //}
    }
}
