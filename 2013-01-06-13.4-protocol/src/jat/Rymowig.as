package jat
{
[CLASS242]   import cejyva.Dialog;


   public class Rymowig extends Dialog
   {
      public function Rymowig(param1:String, param2:String, param3:String, param4:String, param5:String) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.badafi=new Fime(this);
         super(param1,param2,param3,param4,param5);
         this.badafi.gutapydep();
         return;
      }

      protected var badafi:Fime;

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.badafi.positionText();
         return;
      }

      override protected function drawGraphicsTemplate() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.badafi.wakyg();
         return;
      }
   }
[/CLASS]
}