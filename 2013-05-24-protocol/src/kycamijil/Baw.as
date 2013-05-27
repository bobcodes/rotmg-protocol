package kycamijil
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import sygumagu.Zifas;
   import nec.Nara;


   public class Baw extends Sprite
   {
      public function Baw(param1:Lufub) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.syn=new Zifas();
         super();
         this.tozoqe(param1);
         return;
      }

      private var _textField:Lufub;

      private var syn:Zifas;

      private function tozoqe(param1:Lufub) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(this._textField=param1);
         return;
      }

      public function update(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._textField.setStringBuilder(new Nara(this.syn.tagyrod(param1)));
         return;
      }
   }

}