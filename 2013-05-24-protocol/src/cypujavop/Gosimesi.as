package cypujavop
{
   import flash.utils.IDataInput;


   public class Gosimesi extends Object
   {
      public function Gosimesi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fefi=new Zekumiz();
         super();
         return;
      }

      public var objectType_:int;

      public var fefi:Zekumiz;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectType_=param1.readShort();
         this.fefi.parseFromInput(param1);
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "objectType_: "+this.objectType_+" status_: "+this.fefi;
      }
   }

}