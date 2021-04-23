# CC Spring 2021: Project: Regular Expressions used in Project
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**59679** | **FARAZ ASHRAF** 
62628 | MUHAMMAD AHSAN
 public static bool accepts(Dictionary<int, Dictionary<char, int>> transitions, int initial, int[] arr ,string s)
        {
            int state = initial;
            bool final;
            Console.WriteLine("current_state\tcharacter\tnext_state");
            foreach (char c in s)
            {
                if (c != 'a' && c != 'b')
                {
                    Console.WriteLine($"{c} is not a part of language {{a,b}}");
                    return false;
                }
                Console.Write(state+"\t\t"); //to print the transitions
                state = transitions[state][c];
                Console.WriteLine( c + "\t\t"+ state );
                
            }
               
            return final  = true ? arr.Contains(state) : false;
        }
        public static string random()
        {
            
           string s = "";
            Random r = new Random(DateTime.Now.Millisecond);
            int length = r.Next(3,11);
            for (int i = 0; i < length; i++)
            {
                int w = r.Next(97,99);
                s += (char)w;
            }

            
            //=r.Next(97, 98);

            return s;
        }

    }
}
