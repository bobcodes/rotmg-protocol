package tyk
{
   import flash.display.Shape;


   public class Meh extends Shape
   {
      public function Meh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var ciqyzugoh:int;

      private var _height:int;

      private var _color:int;

      public function setSize(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.ciqyzugoh=param1;
         this._height=param2;
         this.zijyme();
         return;
      }

      public function setColor(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._color=param1;
         this.zijyme();
         return;
      }

      private function zijyme() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.clear();
         graphics.beginFill(this._color);
         graphics.drawRect(0,0,this.ciqyzugoh,this._height);
         graphics.endFill();
         return;
      }
   }

}