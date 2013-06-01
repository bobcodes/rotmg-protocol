package fyvanod
{
[CLASS288]   import tysenyzy.Zovisis;
   import kirofyny.Hehuf;
   import qypupet.Tuhyfutos;
   import leselo.Account;
   import flash.events.MouseEvent;
   import qypupet.Dafuhu;
   import jat.CaretakerQueryDialog;
   import zec.YardUpgraderView;


   public class Dekiqa extends Zovisis
   {
      public function Dekiqa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Byzozit;

      public var lyhog:Hehuf;

      public var gadavuf:Tuhyfutos;

      public var account:Account;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.init(this.zuraraki());
         this.wehar();
         return;
      }

      private function wehar() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.view.tewu)
         {
            this.view.tewu.addEventListener(MouseEvent.CLICK,this.ludypuc);
            this.view.tymipe.addEventListener(MouseEvent.CLICK,this.dugonehy);
         }
         else
         {
            this.view.tymipe.addEventListener(MouseEvent.CLICK,this.dugonehy);
         }
         return;
      }

      private function zuraraki() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(!this.account.tuq())
         {
            return false;
         }
         _loc1_=this.gadavuf.cumyma();
         return _loc1_<Dafuhu.lenuhido;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      protected function dugonehy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lyhog.dispatch(new CaretakerQueryDialog());
         return;
      }

      protected function ludypuc(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyhog.dispatch(new YardUpgraderView());
         return;
      }
   }
[/CLASS]
}