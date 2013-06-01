package bolyta
{
[CLASS957]   import jat.Rymowig;
   import cejyva.Qopatir;
   import cejyva.Revaz;
   import tinava.Dab;
   import cejyva.Dialog;


   public class EvolveDialog extends Rymowig implements Qopatir
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function EvolveDialog(param1:Jyd) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyryq=param1;
         super("EvolveDialog.title","","ErrorDialog.ok",null,null);
         this.momy.add(this,Dialog.LEFT_BUTTON);
         qureje=param1.width+1;
         return;
      }

      private static const bororyq:int = 6;

      public var lyryq:Jyd;

      private const momy:Revaz = new Revaz();

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         box_.addChild(this.lyryq);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyryq.x=(qureje-this.lyryq.width)/2;
         this.lyryq.y=danypifev.getBounds(box_).bottom+bororyq;
         return;
      }

      override protected function drawGraphicsTemplate() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.drawGraphicsTemplate();
         var _loc1_:Number = this.lyryq.getBounds(rect_).bottom;
         badafi.drawLine(_loc1_);
         return;
      }

      public function gif() : Dab {
         return this.momy.gif();
      }
   }
[/CLASS]
}