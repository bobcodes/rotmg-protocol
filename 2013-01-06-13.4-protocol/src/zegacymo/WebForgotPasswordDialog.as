package zegacymo
{
[CLASS693]   import nonyna.Frame;
   import tinava.Dab;
   import nonyna.Cyb;
   import com.company.assembleegameclient.ui.Sosapa;
   import flash.events.MouseEvent;
   import zehus.Kelapu;


   public class WebForgotPasswordDialog extends Frame
   {
      public function WebForgotPasswordDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super("WebForgotPasswordDialog.title","WebForgotPasswordDialog.leftButton","WebForgotPasswordDialog.rightButton","/forgotPassword");
         this.dytovu=new Cyb("WebForgotPasswordDialog.email",false);
         sirutugu(this.dytovu);
         this.mav=new Sosapa(12,false,"WebForgotPasswordDialog.register");
         nozokuw(this.mav);
         mibyruji.addEventListener(MouseEvent.CLICK,this.furylutil);
         this.cancel=new Kelapu(mycip,MouseEvent.CLICK);
         this.register=new Kelapu(this.mav,MouseEvent.CLICK);
         this.submit=new Dab(String);
         return;
      }

      public var cancel:Dab;

      public var submit:Dab;

      public var register:Dab;

      private var dytovu:Cyb;

      private var mav:Sosapa;

      private function furylutil(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.winuf())
         {
            disable();
            this.submit.dispatch(this.dytovu.text());
         }
         return;
      }

      private function winuf() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = !(this.dytovu.text()=="");
         if(!_loc1_)
         {
            this.dytovu.famugujo("Not a valid email address");
         }
         return _loc1_;
      }

      public function mede(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dytovu.famugujo(param1);
         return;
      }
   }
[/CLASS]
}