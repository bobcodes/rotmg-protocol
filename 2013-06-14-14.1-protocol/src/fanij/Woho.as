package fanij
{


   public class Woho extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Woho(param1:*, param2:int, param3:Wymove) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.value=param1;
         this.qyb=param2;
         this.rarity=param3;
         return;
      }

      public static const cyb:Woho = new Woho("Yard Upgrader 1",1,Wymove.rofu);

      public static const cozyh:Woho = new Woho("Yard Upgrader 2",2,Wymove.zohile);

      public static const zewag:Woho = new Woho("Yard Upgrader 3",3,Wymove.roguk);

      public static const naky:Woho = new Woho("Yard Upgrader 4",4,Wymove.vikajy);

      public static const fesutir:Woho = new Woho("Yard Upgrader 5",5,Wymove.hov);

      public static const vuzopaba:int = 5;

      public static function get list() : Array {
         return [cyb,cozyh,zewag,naky,fesutir];
      }

      public static function gobipy(param1:String) : Woho {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Woho = null;
         var _loc3_:Woho = null;
         for each (_loc3_ in Woho.list)
         {
            if(param1==_loc3_.value)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public static function naryq(param1:int) : Woho {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Woho = null;
         var _loc3_:Woho = null;
         for each (_loc3_ in Woho.list)
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

      public var rarity:Wymove;
   }

}