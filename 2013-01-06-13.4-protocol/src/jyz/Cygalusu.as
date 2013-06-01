package jyz
{
[CLASS1610]   import flash.utils.IDataInput;


   public class Cygalusu extends Object
   {
      public function Cygalusu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var item_:int;

      public var rapa:int;

      public var nyqineb:Boolean;

      public var included_:Boolean;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.item_=param1.readInt();
         this.rapa=param1.readInt();
         this.nyqineb=param1.readBoolean();
         this.included_=param1.readBoolean();
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "item: "+this.item_+" slotType: "+this.rapa+" tradeable: "+this.nyqineb+" included:"+this.included_;
      }
   }
[/CLASS]
}