package jyz
{
[CLASS1421]   import flash.utils.IDataOutput;


   public class Rehudicov extends Object
   {
      public function Rehudicov(param1:int, param2:Number, param3:Number) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.time_=param1;
         this.x_=param2;
         this.y_=param3;
         return;
      }

      public var time_:int;

      public var x_:Number;

      public var y_:Number;

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         param1.writeFloat(this.x_);
         param1.writeFloat(this.y_);
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "time_: "+this.time_+" x_: "+this.x_+" y_: "+this.y_;
      }
   }
[/CLASS]
}