package civop
{
[CLASS1684]   import flash.display.Shape;


   public class Depucytek extends Shape
   {
      public function Depucytek() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var qej:int;

      private var _height:int;

      private var _color:int;

      public function setSize(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qej=param1;
         this._height=param2;
         this.kuhukyk();
         return;
      }

      public function setColor(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._color=param1;
         this.kuhukyk();
         return;
      }

      private function kuhukyk() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.clear();
         graphics.beginFill(this._color);
         graphics.drawRect(0,0,this.qej,this._height);
         graphics.endFill();
         return;
      }
   }
[/CLASS]
}