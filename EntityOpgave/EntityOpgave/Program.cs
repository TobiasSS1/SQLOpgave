using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace EntityOpgave
{
    class Program
    {
        public Program()
        {
                
        }
        static void Main(string[] args)
        {
            using (var db = new HotelContext())
            {

                var hotelList = from h in db.Hotel
                                select h;

                foreach (var h in hotelList)
                {
                    Console.WriteLine(h.Address);
                }

                var hotelList2 = from h in db.Guest
                                select h;

                foreach (var h in hotelList2)
                {
                    Console.WriteLine(h.Name);
                }

            }

            

            Console.ReadLine();
        }
    }
}
