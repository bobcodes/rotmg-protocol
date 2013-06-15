package zekeqa
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import pusy.Lyfezy;
   import gokyc.Rud;
   import com.company.util.Bycaqa;


   public class Saje extends Kyjefe
   {
      public function Saje() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:NewChooseNameFrame;

      public var account:Account;

      public var ridecy:Boquzojul;

      public var closeDialogs:Lebovas;

      public var foryc:Lyfezy;

      public var client:Rud;

      private var name:String;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.choose.add(this.kysotyz);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.choose.remove(this.kysotyz);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function kysotyz(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         if(param1.length<1)
         {
            this.view.nirin("Name too short");
         }
         else
         {
            this.wobaropab();
         }
         return;
      }

      private function wobaropab() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {name:this.name};
         Bycaqa.timokujo(_loc1_,this.account.pedavitu());
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/setName",_loc1_);
         this.view.disable();
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.sipezyf();
         }
         else
         {
            this.nyde(param2);
         }
         return;
      }

      private function sipezyf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.foryc.dispatch(this.name);
         this.closeDialogs.dispatch();
         return;
      }

      private function nyde(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.nirin(param1);
         this.view.kafuwuge();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }

}