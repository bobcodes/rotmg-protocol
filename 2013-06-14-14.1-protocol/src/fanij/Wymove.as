package fanij
{


   public class Wymove extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wymove(param1:*, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.value=param1;
         this.qyb=param2;
         return;
      }

      public static const rofu:Wymove = new Wymove("Pets.common",0);

      public static const zohile:Wymove = new Wymove("Pets.uncommon",1);

      public static const roguk:Wymove = new Wymove("Pets.rare",2);

      public static const vikajy:Wymove = new Wymove("Pets.legendary",3);

      public static const hov:Wymove = new Wymove("Pets.divine",4);

      public static const vuzopaba:int = 4;

      public static function get list() : Array {
         return [rofu,zohile,roguk,vikajy,hov];
      }

      public static function gobipy(param1:String) : Wymove {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Wymove = null;
         var _loc3_:Wymove = null;
         for each (_loc3_ in Wymove.list)
         {
            if(param1==_loc3_.value)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public static function naryq(param1:int) : Wymove {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Wymove = null;
         var _loc3_:Wymove = null;
         for each (_loc3_ in Wymove.list)
         {
            if(param1==_loc3_.qyb)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public var value:String;

      public var qyb:int;
   }

}