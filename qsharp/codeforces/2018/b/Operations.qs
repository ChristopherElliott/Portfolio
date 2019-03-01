namespace Solution
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Primitive;

    operation Solve (qs :  Qubit[], index : Int) : ()
    {
        body
        {
            H(qs[0]); 
            CNOT(qs[0], qs[1]); 

            if (index == 1)
            {
                Z(qs[1]); 
            }
            elif (index == 2)
            {
                X(qs[1]); 
            }
            elif (index == 3)
            {
                X(qs[1]); 
                Z(qs[1]); 
            }

        }
    }

    operation Driver () : ()    
    {
        body
        {
            using (qs = Qubit[2])
            {
                Solve(qs, 0); 
                Reset(qs[0]); 
                Reset(qs[1]); 
            }

            using (qs = Qubit[2])
            {
                Solve(qs, 1); 
                Reset(qs[0]); 
                Reset(qs[1]); 
            }

            using (qs = Qubit[2])
            {
                Solve(qs, 2); 
                Reset(qs[0]); 
                Reset(qs[1]); 
            }

            using (qs = Qubit[2])
            {
                Solve(qs, 3); 
                Reset(qs[0]); 
                Reset(qs[1]); 
            }
        }
    }
}
