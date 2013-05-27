package cypujavop
{
   import flash.utils.IDataInput;


   public class Qado extends Object
   {
      public function Qado() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var x_:int;

      public var y_:int;

      public var type_:uint;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.x_=param1.readShort();
         this.y_=param1.readShort();
         this.type_=param1.readShort();
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "x_: "+this.x_+" y_: "+this.y_+" type_:"+this.type_;
      }
   }

}