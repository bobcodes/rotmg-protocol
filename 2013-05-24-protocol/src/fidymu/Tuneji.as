package fidymu
{
   import nas.Dialog;


   public class Tuneji extends Dialog
   {
      public function Tuneji(param1:String, param2:String, param3:String, param4:String, param5:String) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.zowopilo=new Lyqumoq(this);
         super(param1,param2,param3,param4,param5);
         this.zowopilo.seba();
         return;
      }

      protected var zowopilo:Lyqumoq;

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zowopilo.positionText();
         return;
      }

      override protected function drawGraphicsTemplate() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zowopilo.mudikom();
         return;
      }
   }

}