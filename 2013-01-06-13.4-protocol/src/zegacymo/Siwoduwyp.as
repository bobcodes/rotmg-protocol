package zegacymo
{
[CLASS677]   import tysenyzy.Zovisis;
   import fur.Zunaho;
   import kirofyny.Hehuf;
   import dutes.Vyzynos;
   import kyhawibyc.Jotat;
   import haqakel.Kefyfa;
   import syfuqycy.Motumeq;


   public class Siwoduwyp extends Zovisis
   {
      public function Siwoduwyp() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:WebChangePasswordDialog;

      public var change:Zunaho;

      public var lyhog:Hehuf;

      public var fasefesak:Vyzynos;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.change.add(this.sunanah);
         this.view.cancel.add(this.onCancel);
         this.fasefesak.add(this.woneb);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.change.remove(this.sunanah);
         this.view.cancel.remove(this.onCancel);
         this.fasefesak.remove(this.woneb);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new WebAccountDetailDialog());
         return;
      }

      private function sunanah() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Jotat = null;
         if((this.jofuz())&&(this.pakufon())&&(this.ruc()))
         {
            this.view.disable();
            _loc1_=new Jotat();
            _loc1_.dyhogo=this.view.password_.text();
            _loc1_.newPassword=this.view.taw.text();
            this.change.dispatch(_loc1_);
         }
         return;
      }

      private function jofuz() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.view.password_.text().length>=5;
         if(!_loc1_)
         {
            this.view.password_.famugujo(Kefyfa.guqut);
         }
         return _loc1_;
      }

      private function pakufon() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.view.taw.text().length>=5;
         if(!_loc1_)
         {
            this.view.taw.famugujo(Kefyfa.vaj);
         }
         return _loc1_;
      }

      private function ruc() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.view.taw.text()==this.view.moluqe.text();
         if(!_loc1_)
         {
            this.view.moluqe.famugujo(Kefyfa.vipek);
         }
         return _loc1_;
      }

      private function woneb(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.famugujo(param1.error);
         this.view.kiwimuj();
         return;
      }
   }
[/CLASS]
}