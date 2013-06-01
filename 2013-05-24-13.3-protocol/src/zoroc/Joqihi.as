package zoroc
{


   public class Joqihi extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Joqihi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const cin:Object = {
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

      public static function savi(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = cin[param1];
         _loc2_=(_loc2_)||(param1=="? ? ? ?"?"Pets.miscellaneous":"");
         return _loc2_;
      }
   }

}