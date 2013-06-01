package cypujavop
{
   import flash.utils.IDataInput;


   public class Quwusyve extends Object
   {
      public function Quwusyve() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var item_:int;

      public var bara:int;

      public var ricotigem:Boolean;

      public var included_:Boolean;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.item_=param1.readInt();
         this.bara=param1.readInt();
         this.ricotigem=param1.readBoolean();
         this.included_=param1.readBoolean();
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "item: "+this.item_+" slotType: "+this.bara+" tradeable: "+this.ricotigem+" included:"+this.included_;
      }
   }

}