package gabufo
{
   import zekeqa.Frame;
   import mukyrosu.Qanyduk;
   import zekeqa.Pedug;
   import com.company.assembleegameclient.ui.Hiry;
   import flash.events.MouseEvent;
   import qykifavol.Rulavowaz;


   public class WebForgotPasswordDialog extends Frame
   {
      public function WebForgotPasswordDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super("WebForgotPasswordDialog.title","WebForgotPasswordDialog.leftButton","WebForgotPasswordDialog.rightButton","/forgotPassword");
         this.sese=new Pedug("WebForgotPasswordDialog.email",false);
         gozunigyl(this.sese);
         this.cipuruf=new Hiry(12,false,"WebForgotPasswordDialog.register");
         pivol(this.cipuruf);
         nuwido.addEventListener(MouseEvent.CLICK,this.puduluzu);
         this.cancel=new Rulavowaz(vuz,MouseEvent.CLICK);
         this.register=new Rulavowaz(this.cipuruf,MouseEvent.CLICK);
         this.submit=new Qanyduk(String);
         return;
      }

      public var cancel:Qanyduk;

      public var submit:Qanyduk;

      public var register:Qanyduk;

      private var sese:Pedug;

      private var cipuruf:Hiry;

      private function puduluzu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.lanuqe())
         {
            disable();
            this.submit.dispatch(this.sese.text());
         }
         return;
      }

      private function lanuqe() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = !(this.sese.text()=="");
         if(!_loc1_)
         {
            this.sese.nirin("Not a valid email address");
         }
         return _loc1_;
      }

      public function cedocy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sese.nirin(param1);
         return;
      }
   }

}