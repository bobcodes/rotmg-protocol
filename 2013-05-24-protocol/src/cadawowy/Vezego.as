package cadawowy
{
   import flash.display.Shape;


   public class Vezego extends Shape
   {
      public function Vezego() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var fugyf:int;

      private var _height:int;

      private var _color:int;

      public function setSize(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.fugyf=param1;
         this._height=param2;
         this.pahun();
         return;
      }

      public function setColor(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._color=param1;
         this.pahun();
         return;
      }

      private function pahun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.beginFill(this._color);
         graphics.drawRect(0,0,this.fugyf,this._height);
         graphics.endFill();
         return;
      }
   }

}