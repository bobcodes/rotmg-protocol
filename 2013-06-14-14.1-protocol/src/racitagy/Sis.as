package racitagy
{
   import vysob.Dialog;


   public class Sis extends Dialog
   {
      public function Sis(param1:String, param2:String, param3:String, param4:String, param5:String) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.jahucot=new Zuhoqemuq(this);
         super(param1,param2,param3,param4,param5);
         this.jahucot.kenofejyn();
         return;
      }

      protected var jahucot:Zuhoqemuq;

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jahucot.positionText();
         return;
      }

      override protected function drawGraphicsTemplate() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jahucot.qigeju();
         return;
      }
   }

}