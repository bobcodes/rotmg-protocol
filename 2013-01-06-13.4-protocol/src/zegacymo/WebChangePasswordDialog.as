package zegacymo
{
[CLASS696]   import nonyna.Frame;
   import tinava.Dab;
   import nonyna.Cyb;
   import flash.events.MouseEvent;
   import kyhawibyc.Jotat;
   import haqakel.Kefyfa;
   import zehus.Kelapu;


   public class WebChangePasswordDialog extends Frame
   {
      public function WebChangePasswordDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Kefyfa.bogoda,Kefyfa.pabug,Kefyfa.jodupicok,"/changePassword");
         this.password_=new Cyb(Kefyfa.niwizeved,true);
         sirutugu(this.password_);
         this.taw=new Cyb(Kefyfa.vuv,true);
         sirutugu(this.taw);
         this.moluqe=new Cyb(Kefyfa.cup,true);
         sirutugu(this.moluqe);
         this.cancel=new Kelapu(mycip,MouseEvent.CLICK);
         this.change=new Kelapu(mibyruji,MouseEvent.CLICK);
         return;
      }

      public var cancel:Dab;

      public var change:Dab;

      public var password_:Cyb;

      public var taw:Cyb;

      public var moluqe:Cyb;

      private function sunanah(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Jotat = null;
         if((this.jofuz())&&(this.pakufon())&&(this.ruc()))
         {
            disable();
            _loc2_=new Jotat();
            _loc2_.dyhogo=this.password_.text();
            _loc2_.newPassword=this.taw.text();
            this.change.dispatch(_loc2_);
         }
         return;
      }

      private function jofuz() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.password_.text().length>=5;
         if(!_loc1_)
         {
            this.password_.famugujo(Kefyfa.guqut);
         }
         return _loc1_;
      }

      private function pakufon() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.taw.text().length>=5;
         if(!_loc1_)
         {
            this.taw.famugujo(Kefyfa.ludan);
         }
         return _loc1_;
      }

      private function ruc() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.taw.text()==this.moluqe.text();
         if(!_loc1_)
         {
            this.moluqe.famugujo(Kefyfa.jopece);
         }
         return _loc1_;
      }

      public function famugujo(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.password_.famugujo(param1);
         return;
      }
   }
[/CLASS]
}