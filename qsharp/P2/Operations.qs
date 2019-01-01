namespace P2
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Primitive;

    operation Driver () : ()
    {
        body
        {
            using (qs = Qubit[2])
            {
                Solve(qs, 1); 
                Reset(qs[0]); 
                Reset(qs[1]); 
            }
        }
    }

    operation Solve (qs :  Qubit[], index : Int) : ()
    {
        body
        {
            if (index == 0)
            {
                H(qs[0]); 
                H(qs[1]); 
            }
            elif (index == 1)
            {
                Z(qs[1]); 
                H(qs[0]); 
                H(qs[1]); 
            }
            elif (index == 2)
            {
                H(qs[0]); 
                CNOT(qs[0], qs[1]); 
            }
            elif (index == 3)
            {
                H(qs[0]); 
                H(qs[1]); 
            }

            
        }
    }

}
