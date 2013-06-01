package zegacymo
{
[CLASS674]   import nonyna.Frame;
   import tinava.Dab;
   import nonyna.Cyb;
   import com.company.assembleegameclient.ui.Sosapa;
   import haqakel.Kefyfa;
   import flash.events.MouseEvent;
   import kyhawibyc.Fapu;
   import zehus.Kelapu;


   public class WebLoginDialog extends Frame
   {
      public function WebLoginDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Kefyfa.hewij,Kefyfa.tynilej,Kefyfa.hojohyji,"/signIn");
         this.todezaq();
         this.forgot=new Kelapu(this.rab,MouseEvent.CLICK);
         this.register=new Kelapu(this.mav,MouseEvent.CLICK);
         this.cancel=new Kelapu(mycip,MouseEvent.CLICK);
         this.signIn=new Dab(Fapu);
         return;
      }

      public var cancel:Dab;

      public var signIn:Dab;

      public var forgot:Dab;

      public var register:Dab;

      private var email:Cyb;

      private var password:Cyb;

      private var rab:Sosapa;

      private var mav:Sosapa;

      private function todezaq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.email=new Cyb(Kefyfa.qyvofyfyr,false);
         sirutugu(this.email);
         this.password=new Cyb(Kefyfa.qacine,true);
         sirutugu(this.password);
         this.rab=new Sosapa(12,false,Kefyfa.hag);
         nozokuw(this.rab);
         this.mav=new Sosapa(12,false,Kefyfa.nusute);
         nozokuw(this.mav);
         mibyruji.addEventListener(MouseEvent.CLICK,this.fakiweb);
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      private function fakiweb(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Fapu = null;
         if((this.winuf())&&(this.jycypine()))
         {
            _loc2_=new Fapu();
            _loc2_.username=this.email.text();
            _loc2_.password=this.password.text();
            this.signIn.dispatch(_loc2_);
         }
         return;
      }

      private function jycypine() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = !(this.password.text()=="");
         if(!_loc1_)
         {
            this.password.famugujo(Kefyfa.fitatobed);
         }
         return _loc1_;
      }

      private function winuf() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = !(this.email.text()=="");
         if(!_loc1_)
         {
            this.email.famugujo(Kefyfa.lihufu);
         }
         return _loc1_;
      }

      public function famugujo(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.password.famugujo(param1);
         return;
      }
   }
[/CLASS]
}