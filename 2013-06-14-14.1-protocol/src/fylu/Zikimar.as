package fylu
{
   import vyvomevac.Wiz;
   import buryq.GTween;
   import flash.display.DisplayObject;


   public class Zikimar extends Wiz
   {
      public function Zikimar(param1:DisplayObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      override public function start() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:GTween = new GTween(target,1,{alpha:0});
         _loc1_.onComplete=this.bocato;
         return;
      }

      private function bocato(param1:GTween) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:GTween = new GTween(target,1.4/2,{alpha:1});
         _loc2_.onComplete=this.niki;
         return;
      }

      private function niki(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         onComplete();
         return;
      }
   }

}