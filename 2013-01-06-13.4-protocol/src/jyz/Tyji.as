package jyz
{
[CLASS1404]   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;


   public class Tyji extends Object
   {
      public function Tyji() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var x_:Number;

      public var y_:Number;

      public function pirocihic() : Point {
         return new Point(this.x_,this.y_);
      }

      public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.x_=param1.readFloat();
         this.y_=param1.readFloat();
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeFloat(this.x_);
         param1.writeFloat(this.y_);
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "x_: "+this.x_+" y_: "+this.y_;
      }
   }
[/CLASS]
}