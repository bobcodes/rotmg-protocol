package dasefezy
{
   import flash.utils.IDataInput;


   public class Siluw extends Object
   {
      public function Siluw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var item_:int;

      public var ququp:int;

      public var jug:Boolean;

      public var included_:Boolean;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.item_=param1.readInt();
         this.ququp=param1.readInt();
         this.jug=param1.readBoolean();
         this.included_=param1.readBoolean();
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "item: "+this.item_+" slotType: "+this.ququp+" tradeable: "+this.jug+" included:"+this.included_;
      }
   }

}