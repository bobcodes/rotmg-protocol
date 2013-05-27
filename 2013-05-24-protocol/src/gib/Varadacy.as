package gib
{
   import qov.Kalefu;
   import ruwa.Account;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import sasacen.Mygotuwo;
   import negirilu.Fuzi;
   import com.company.util.Vuwewuc;


   public class Varadacy extends Kalefu
   {
      public function Varadacy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:NewChooseNameFrame;

      public var account:Account;

      public var naval:Hez;

      public var closeDialogs:Cowymute;

      public var ryqo:Mygotuwo;

      public var client:Fuzi;

      private var name:String;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.choose.add(this.pakes);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.choose.remove(this.pakes);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function pakes(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name=param1;
         if(param1.length<1)
         {
            this.view.hivuma("Name too short");
         }
         else
         {
            this.viniqyz();
         }
         return;
      }

      private function viniqyz() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {name:this.name};
         Vuwewuc.hohohev(_loc1_,this.account.venupog());
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/setName",_loc1_);
         this.view.disable();
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.panabacut();
         }
         else
         {
            this.turely(param2);
         }
         return;
      }

      private function panabacut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ryqo.dispatch(this.name);
         this.closeDialogs.dispatch();
         return;
      }

      private function turely(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.hivuma(param1);
         this.view.pinyry();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}