package gabufo
{
   import zekeqa.Frame;
   import mukyrosu.Qanyduk;
   import zekeqa.Pedug;
   import com.company.assembleegameclient.ui.Hiry;
   import komi.Vibemod;
   import flash.events.MouseEvent;
   import cinyj.Vobewabij;
   import qykifavol.Rulavowaz;


   public class WebLoginDialog extends Frame
   {
      public function WebLoginDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(Vibemod.todovowap,Vibemod.nipynumep,Vibemod.kosoji,"/signIn");
         this.quguhadi();
         this.forgot=new Rulavowaz(this.zepahyqem,MouseEvent.CLICK);
         this.register=new Rulavowaz(this.cipuruf,MouseEvent.CLICK);
         this.cancel=new Rulavowaz(vuz,MouseEvent.CLICK);
         this.signIn=new Qanyduk(Vobewabij);
         return;
      }

      public var cancel:Qanyduk;

      public var signIn:Qanyduk;

      public var forgot:Qanyduk;

      public var register:Qanyduk;

      private var email:Pedug;

      private var password:Pedug;

      private var zepahyqem:Hiry;

      private var cipuruf:Hiry;

      private function quguhadi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.email=new Pedug(Vibemod.raduliz,false);
         gozunigyl(this.email);
         this.password=new Pedug(Vibemod.lyka,true);
         gozunigyl(this.password);
         this.zepahyqem=new Hiry(12,false,Vibemod.hozyvosi);
         pivol(this.zepahyqem);
         this.cipuruf=new Hiry(12,false,Vibemod.kukyr);
         pivol(this.cipuruf);
         nuwido.addEventListener(MouseEvent.CLICK,this.coriky);
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      private function coriky(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vobewabij = null;
         if((this.lanuqe())&&(this.rojosa()))
         {
            _loc2_=new Vobewabij();
            _loc2_.username=this.email.text();
            _loc2_.password=this.password.text();
            this.signIn.dispatch(_loc2_);
         }
         return;
      }

      private function rojosa() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = !(this.password.text()=="");
         if(!_loc1_)
         {
            this.password.nirin(Vibemod.lumiby);
         }
         return _loc1_;
      }

      private function lanuqe() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = !(this.email.text()=="");
         if(!_loc1_)
         {
            this.email.nirin(Vibemod.lovadobum);
         }
         return _loc1_;
      }

      public function nirin(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.password.nirin(param1);
         return;
      }
   }

}