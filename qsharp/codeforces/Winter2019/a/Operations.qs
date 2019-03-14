namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Extensions.Diagnostics; 
    open Microsoft.Quantum.Extensions.Convert;
    open Microsoft.Quantum.Extensions.Math;

    operation Solve (qs : Qubit[]) : Unit {
        body (...) {

            H(qs[0]); 
            CNOT(qs[0], qs[1]);
        }
        adjoint auto;
    }
    
    operation Driver () : Unit    
    {
        using (qs = Qubit[2])
        {
            Solve(qs); 
            DumpMachine(); 

            //  AssertProb([PauliZ], [qs[0]], Zero, 1,
            //     "Measuring in conjugate basis did not give 1/3 results.", 1e-3);
            //  AssertProb([PauliZ], [qs[1]], One, .6666,
            //     "Measuring in conjugate basis did not give 1/3 results.", 1e-3);


            // 00
            // Ids:    [1;0;]
            // Wavefunction:
            // 0:      1       0
            // 1:      0       0
            // 2:      0       0
            // 3:      0       0
            

            // 10
            // Ids:    [1;0;]
            // Wavefunction:
            // 0:      0       0
            // 1:      1       0
            // 2:      0       0
            // 3:      0       0

            // 01
            // Ids:    [1;0;]
            // Wavefunction:
            // 0:      0       0
            // 1:      0       0
            // 2:      1       0
            // 3:      0       0

            // 11
            // Ids:    [1;0;]
            // Wavefunction:
            // 0:      0       0
            // 1:      0       0
            // 2:      0       0
            // 3:      1       0

            Reset(qs[0]); 
            Reset(qs[1]); 
        }
    }

    operation UsefulStuff () : Unit
    {
        using (register = Qubit[3]) {
            let data = register[0];
            let auxiliaryQubits = register[1 .. 2];
        }

        using (register = Qubit[3]) {
            ApplyToEach(H, register);
            ApplyToEach(H, register);
        }

    }
}
