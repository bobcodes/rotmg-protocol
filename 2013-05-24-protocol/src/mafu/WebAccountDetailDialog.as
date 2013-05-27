package mafu
{
   import gib.Frame;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Rucoted;
   import nec.Nara;
   import flash.events.MouseEvent;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import gyzesuqu.Zojygese;


   public class WebAccountDetailDialog extends Frame
   {
      public function WebAccountDetailDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super("WebAccountDetailDialog.title","","WebAccountDetailDialog.rightButton","/currentLogin");
         this.movahyti();
         this.feni();
         h_=h_+88;
         this.cancel=new Zojygese(dal,MouseEvent.CLICK);
         this.change=new Hugyqufyq();
         this.logout=new Hugyqufyq();
         this.verify=new Hugyqufyq();
         return;
      }

      public var cancel:Hugyqufyq;

      public var change:Hugyqufyq;

      public var logout:Hugyqufyq;

      public var verify:Hugyqufyq;

      private var loginText:Lufub;

      private var jobuc:Lufub;

      private var hytitoc:Rucoted;

      private var fibyf:Rucoted;

      private var gywyte:Rucoted;

      public function qupabak(param1:String, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jobuc.setStringBuilder(new Nara(param1));
         if(!param2)
         {
            this.pisih();
         }
         this.sohubukof();
         this.rumeky();
         return;
      }

      private function pisih() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hytitoc=new Rucoted(12,false,"WebAccountDetailDialog.verify");
         zuduhujul(this.hytitoc);
         this.hytitoc.addEventListener(MouseEvent.CLICK,this.buqonon);
         return;
      }

      private function sohubukof() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fibyf=new Rucoted(12,false,"WebAccountDetailDialog.changePassword");
         this.fibyf.addEventListener(MouseEvent.CLICK,this.kosu);
         zuduhujul(this.fibyf);
         return;
      }

      private function kosu(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.change.dispatch();
         return;
      }

      private function rumeky() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gywyte=new Rucoted(12,false,"WebAccountDetailDialog.logout");
         this.gywyte.addEventListener(MouseEvent.CLICK,this.ledylowo);
         zuduhujul(this.gywyte);
         return;
      }

      private function ledylowo(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.logout.dispatch();
         return;
      }

      private function movahyti() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loginText=new Lufub().setSize(18).setColor(11776947);
         this.loginText.setBold(true);
         this.loginText.setStringBuilder(new Sire().setParams("WebAccountDetailDialog.loginText"));
         this.loginText.filters=[new DropShadowFilter(0,0,0)];
         this.loginText.y=h_-60;
         this.loginText.x=17;
         addChild(this.loginText);
         return;
      }

      private function feni() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jobuc=new Lufub().setSize(16).setColor(11776947);
         this.jobuc.y=h_-30;
         this.jobuc.x=17;
         addChild(this.jobuc);
         return;
      }

      private function buqonon(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.verify.dispatch();
         this.hytitoc.nybi("WebAccountDetailDialog.sent");
         return;
      }
   }

}