namespace P2
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Primitive;

    operation Driver () : ()
    {
        body
        {
           
            using (qs = new Qubit[2])
            {
                Solve(qs, 1); 
            }
        }
    }

    operation Solve (qs : Qubit[], index : Int) : ()
    {
        body
        {
           // 

           H(qs[0]); 
           H(qs[1]); 
            
        }
    }
}
