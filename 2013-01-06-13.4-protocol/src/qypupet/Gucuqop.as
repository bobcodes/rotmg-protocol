package qypupet
{
[CLASS953]

   public class Gucuqop extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gucuqop(param1:*, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.value=param1;
         this.dafeweqif=param2;
         return;
      }

      public static const hanetorum:Gucuqop = new Gucuqop("Pets.common",0);

      public static const puvalamu:Gucuqop = new Gucuqop("Pets.uncommon",1);

      public static const gohalime:Gucuqop = new Gucuqop("Pets.rare",2);

      public static const fisowybe:Gucuqop = new Gucuqop("Pets.legendary",3);

      public static const lavadak:Gucuqop = new Gucuqop("Pets.divine",4);

      public static const lenuhido:int = 4;

      public static function get list() : Array {
         return [hanetorum,puvalamu,gohalime,fisowybe,lavadak];
      }

      public static function gak(param1:String) : Gucuqop {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Gucuqop = null;
         var _loc3_:Gucuqop = null;
         for each (_loc3_ in Gucuqop.list)
         {
            if(param1==_loc3_.value)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public static function cep(param1:int) : Gucuqop {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Gucuqop = null;
         var _loc3_:Gucuqop = null;
         for each (_loc3_ in Gucuqop.list)
         {
            if(param1==_loc3_.dafeweqif)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public var value:String;

      public var dafeweqif:int;
   }
[/CLASS]
}