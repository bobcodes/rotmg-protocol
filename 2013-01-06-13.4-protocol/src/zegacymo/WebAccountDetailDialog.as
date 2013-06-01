package zegacymo
{
[CLASS685]   import nonyna.Frame;
   import tinava.Dab;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Sosapa;
   import totuhare.Javo;
   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;
   import zehus.Kelapu;


   public class WebAccountDetailDialog extends Frame
   {
      public function WebAccountDetailDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super("WebAccountDetailDialog.title","","WebAccountDetailDialog.rightButton","/currentLogin");
         this.hiryryd();
         this.fusawo();
         h_=h_+88;
         this.cancel=new Kelapu(mibyruji,MouseEvent.CLICK);
         this.change=new Dab();
         this.logout=new Dab();
         this.verify=new Dab();
         return;
      }

      public var cancel:Dab;

      public var change:Dab;

      public var logout:Dab;

      public var verify:Dab;

      private var loginText:Capitu;

      private var fazo:Capitu;

      private var tufuvacov:Sosapa;

      private var wewopoco:Sosapa;

      private var paqob:Sosapa;

      public function holygyhi(param1:String, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.fazo.setStringBuilder(new Javo(param1));
         if(!param2)
         {
            this.wesasusul();
         }
         this.famamicul();
         this.hakuheduc();
         return;
      }

      private function wesasusul() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tufuvacov=new Sosapa(12,false,"WebAccountDetailDialog.verify");
         nozokuw(this.tufuvacov);
         this.tufuvacov.addEventListener(MouseEvent.CLICK,this.homasalo);
         return;
      }

      private function famamicul() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wewopoco=new Sosapa(12,false,"WebAccountDetailDialog.changePassword");
         this.wewopoco.addEventListener(MouseEvent.CLICK,this.sunanah);
         nozokuw(this.wewopoco);
         return;
      }

      private function sunanah(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.change.dispatch();
         return;
      }

      private function hakuheduc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paqob=new Sosapa(12,false,"WebAccountDetailDialog.logout");
         this.paqob.addEventListener(MouseEvent.CLICK,this.zycovozi);
         nozokuw(this.paqob);
         return;
      }

      private function zycovozi(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.logout.dispatch();
         return;
      }

      private function hiryryd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.loginText=new Capitu().setSize(18).setColor(11776947);
         this.loginText.setBold(true);
         this.loginText.setStringBuilder(new Zufi().setParams("WebAccountDetailDialog.loginText"));
         this.loginText.filters=[new DropShadowFilter(0,0,0)];
         this.loginText.y=h_-60;
         this.loginText.x=17;
         addChild(this.loginText);
         return;
      }

      private function fusawo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fazo=new Capitu().setSize(16).setColor(11776947);
         this.fazo.y=h_-30;
         this.fazo.x=17;
         addChild(this.fazo);
         return;
      }

      private function homasalo(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.verify.dispatch();
         this.tufuvacov.cedil("WebAccountDetailDialog.sent");
         return;
      }
   }
[/CLASS]
}