package muhazasy
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import bamozifaw.Beb;
   import jediwip.Vofezuzy;


   public class Vicuwuga extends Sprite
   {
      public function Vicuwuga(param1:Guzowoja) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hovycyvyr=new Beb();
         super();
         this.syqeny(param1);
         return;
      }

      private var _textField:Guzowoja;

      private var hovycyvyr:Beb;

      private function syqeny(param1:Guzowoja) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(this._textField=param1);
         return;
      }

      public function update(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._textField.setStringBuilder(new Vofezuzy(this.hovycyvyr.casu(param1)));
         return;
      }
   }

}