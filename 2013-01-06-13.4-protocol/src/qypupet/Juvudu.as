package qypupet
{
[CLASS951]

   public class Juvudu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Juvudu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const jokozyv:Object = {
                                                  Humanoid:"Pets.humanoid",
                                                  Feline:"Pets.feline",
                                                  Canine:"Pets.canine",
                                                  Avian:"Pets.avian",
                                                  Exotic:"Pets.exotic",
                                                  Farm:"pets.Farm",
                                                  Woodland:"Pets.woodland",
                                                  Reptile:"Pets.reptile",
                                                  Insect:"pets.Insect",
                                                  Penguin:"pets.Penguin",
                                                  Aquatic:"Pets.aquatic",
                                                  Spooky:"Pets.spooky",
                                                  Automaton:"Pets.automaton"
                                                  };

      public static function devucohul(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = jokozyv[param1];
         _loc2_=(_loc2_)||(param1=="? ? ? ?"?"Pets.miscellaneous":"");
         return _loc2_;
      }
   }
[/CLASS]
}