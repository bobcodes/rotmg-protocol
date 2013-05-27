package kynusa
{
   import wegyluke.Hez;
   import liwaqa.Qazukifat;
   import aaa.rotmg.i18n.I18nKeys;


   public class Wyqice extends Object
   {
      public function Wyqice() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var naval:Hez;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(this.detuloca());
         return;
      }

      private function detuloca() : Qazukifat {
         return new Qazukifat().setTitle(I18nKeys.tikebuwu).setBody(I18nKeys.weciruko,I18nKeys.dyfasu);
      }
   }

}