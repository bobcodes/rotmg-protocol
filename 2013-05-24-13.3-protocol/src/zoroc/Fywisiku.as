package zoroc
{


   public class Fywisiku extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Fywisiku(param1:*, param2:int, param3:Cikyzigit) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.value=param1;
         this.wusibaw=param2;
         this.rarity=param3;
         return;
      }

      public static const laretyl:Fywisiku = new Fywisiku("Yard Upgrader 1",1,Cikyzigit.tupuv);

      public static const pygib:Fywisiku = new Fywisiku("Yard Upgrader 2",2,Cikyzigit.mucum);

      public static const jycozevu:Fywisiku = new Fywisiku("Yard Upgrader 3",3,Cikyzigit.guzibag);

      public static const jidodaf:Fywisiku = new Fywisiku("Yard Upgrader 4",4,Cikyzigit.tirik);

      public static const piho:Fywisiku = new Fywisiku("Yard Upgrader 5",5,Cikyzigit.luwilal);

      public static const nobykez:int = 5;

      public static function get list() : Array {
         return [laretyl,pygib,jycozevu,jidodaf,piho];
      }

      public static function tawyt(param1:String) : Fywisiku {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Fywisiku = null;
         var _loc3_:Fywisiku = null;
         for each (_loc3_ in Fywisiku.list)
         {
            if(param1==_loc3_.value)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public static function kyj(param1:int) : Fywisiku {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Fywisiku = null;
         var _loc3_:Fywisiku = null;
         for each (_loc3_ in Fywisiku.list)
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

      public var rarity:Cikyzigit;
   }

}