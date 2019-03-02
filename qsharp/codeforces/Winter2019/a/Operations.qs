namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Extensions.Diagnostics; 

    operation Solve (x : Qubit[], y : Qubit) : Unit {
        body (...) {
            H(x[0]); 
            Controlled X (x, y); 
            X(x[0]); 
        }
        adjoint auto;
    }
    
    operation Driver () : Unit    
    {
        using (x = Qubit[1])
        {
            using (y = Qubit())
            {
                X(x[0]); 
                X(y); 

                Solve(x, y); 
                DumpMachine(); 

                Reset(x[0]); 
                Reset(y); 
            }
        }
    }
}
