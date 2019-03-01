namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    

    operation Solve () : Unit {
        Message("Hello quantum world!");
    }

    // operation Solve (qs : Qubit[]) : Unit {
    //     body (...) {
    //         H(qs[0]); 
    //         H(qs[1]); 
    //         // Controlled X (qs[0], qs[1]);
    //         H(qs[0]); 
    //         H(qs[1]); 
    //     }
    //     adjoint auto;
    // }

    operation Driver () : Unit    
    {
        Solve(); 
    }
}
