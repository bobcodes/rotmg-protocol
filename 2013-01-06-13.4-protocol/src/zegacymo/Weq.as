package zegacymo
{
[CLASS691]   import tysenyzy.Zovisis;
   import kirofyny.Tiqimav;
   import kirofyny.Hehuf;
   import rysuho.Dig;
   import dutes.Vyzynos;
   import tusidywuq.Regyd;
   import kyhawibyc.Fapu;
   import syfuqycy.Motumeq;


   public class Weq extends Zovisis
   {
      public function Weq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Jugec;

      public var madeve:Tiqimav;

      public var lyhog:Hehuf;

      public var register:Dig;

      public var feseqy:Vyzynos;

      public var picywu:Regyd;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.add(this.qare);
         this.view.signIn.add(this.fakiweb);
         this.view.cancel.add(this.onCancel);
         this.feseqy.add(this.led);
         this.picywu.dispatch(false);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.remove(this.qare);
         this.view.signIn.remove(this.fakiweb);
         this.view.cancel.remove(this.onCancel);
         this.feseqy.remove(this.led);
         this.picywu.dispatch(true);
         return;
      }

      private function qare(param1:Fapu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.disable();
         this.register.dispatch(param1);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madeve.dispatch();
         return;
      }

      private function fakiweb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new WebLoginDialog());
         return;
      }

      private function led(param1:Motumeq) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.moputyrop(param1.error);
         this.view.kiwimuj();
         return;
      }
   }
[/CLASS]
}