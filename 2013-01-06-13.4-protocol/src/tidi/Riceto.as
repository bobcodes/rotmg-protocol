package tidi
{
[CLASS415]   import tysenyzy.Zovisis;
   import rysuho.Lec;
   import kirofyny.Tiqimav;


   public class Riceto extends Zovisis
   {
      public function Riceto() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:AgeVerificationDialog;

      public var lodezefo:Lec;

      public var closeDialogs:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.wulovy.add(this.tajupyt);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.wulovy.remove(this.tajupyt);
         return;
      }

      private function tajupyt(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.junap();
         }
         else
         {
            this.jinutic();
         }
         return;
      }

      private function junap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lodezefo.dispatch();
         this.closeDialogs.dispatch();
         return;
      }

      private function jinutic() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}