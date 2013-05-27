package zoroc
{


   public class Cikyzigit extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cikyzigit(param1:*, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.value=param1;
         this.wusibaw=param2;
         return;
      }

      public static const tupuv:Cikyzigit = new Cikyzigit("Pets.common",0);

      public static const mucum:Cikyzigit = new Cikyzigit("Pets.uncommon",1);

      public static const guzibag:Cikyzigit = new Cikyzigit("Pets.rare",2);

      public static const tirik:Cikyzigit = new Cikyzigit("Pets.legendary",3);

      public static const luwilal:Cikyzigit = new Cikyzigit("Pets.divine",4);

      public static const nobykez:int = 4;

      public static function get list() : Array {
         return [tupuv,mucum,guzibag,tirik,luwilal];
      }

      public static function tawyt(param1:String) : Cikyzigit {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Cikyzigit = null;
         var _loc3_:Cikyzigit = null;
         for each (_loc3_ in Cikyzigit.list)
         {
            if(param1==_loc3_.value)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public static function kyj(param1:int) : Cikyzigit {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Cikyzigit = null;
         var _loc3_:Cikyzigit = null;
         for each (_loc3_ in Cikyzigit.list)
         {
            if(param1==_loc3_.wusibaw)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public var value:String;

      public var wusibaw:int;
   }

}