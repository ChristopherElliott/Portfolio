using System;

using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;

namespace Solution
{
    class DriverApp
    {
        static void Main(string[] args)
        {
            using (var qsim = new QuantumSimulator())
            {
                Driver.Run(qsim).Wait();
            }
        }
    }
}