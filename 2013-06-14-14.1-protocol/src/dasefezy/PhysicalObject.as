package dasefezy
{
   import flash.utils.IDataInput;


   public class PhysicalObject extends Object
   {
      public function PhysicalObject() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.syt=new PhysicalObjectData();
         super();
         return;
      }

      public var objectType_:int;

      public var syt:PhysicalObjectData;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.objectType_=param1.readShort();
         this.syt.parseFromInput(param1);
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "objectType_: "+this.objectType_+" status_: "+this.syt;
      }
   }

}