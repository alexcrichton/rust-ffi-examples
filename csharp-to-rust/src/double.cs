using System;
using System.Runtime.InteropServices;

namespace DoubleClass {

    class Double {
        [DllImport ("libdouble_input")]
        public static extern int double_input (int input);


        public static void Main (string[] args) {
            Console.WriteLine (double_input (2));
        }
    }
}
