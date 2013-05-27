package mafu
{
   import gib.Frame;
   import tulunyno.Hugyqufyq;
   import gib.Wejat;
   import com.company.assembleegameclient.ui.Rucoted;
   import flash.events.MouseEvent;
   import gyzesuqu.Zojygese;


   public class WebForgotPasswordDialog extends Frame
   {
      public function WebForgotPasswordDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super("WebForgotPasswordDialog.title","WebForgotPasswordDialog.leftButton","WebForgotPasswordDialog.rightButton","/forgotPassword");
         this.vyqum=new Wejat("WebForgotPasswordDialog.email",false);
         jupywota(this.vyqum);
         this.dorak=new Rucoted(12,false,"WebForgotPasswordDialog.register");
         zuduhujul(this.dorak);
         dal.addEventListener(MouseEvent.CLICK,this.penul);
         this.cancel=new Zojygese(lodab,MouseEvent.CLICK);
         this.register=new Zojygese(this.dorak,MouseEvent.CLICK);
         this.submit=new Hugyqufyq(String);
         return;
      }

      public var cancel:Hugyqufyq;

      public var submit:Hugyqufyq;

      public var register:Hugyqufyq;

      private var vyqum:Wejat;

      private var dorak:Rucoted;

      private function penul(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.lumu())
         {
            disable();
            this.submit.dispatch(this.vyqum.text());
         }
         return;
      }

      private function lumu() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = !(this.vyqum.text()=="");
         if(!_loc1_)
         {
            this.vyqum.hivuma("Not a valid email address");
         }
         return _loc1_;
      }

      public function vukukyso(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vyqum.hivuma(param1);
         return;
      }
   }

}