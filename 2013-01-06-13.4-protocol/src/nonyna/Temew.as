package nonyna
{
[CLASS442]   import tysenyzy.Zovisis;
   import leselo.Account;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import nylos.Tifada;
   import qiwyz.Bozakehy;
   import com.company.util.Vokekizac;


   public class Temew extends Zovisis
   {
      public function Temew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:NewChooseNameFrame;

      public var account:Account;

      public var lyhog:Hehuf;

      public var closeDialogs:Tiqimav;

      public var mecanalos:Tifada;

      public var client:Bozakehy;

      private var name:String;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.choose.add(this.vyhipavus);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.choose.remove(this.vyhipavus);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function vyhipavus(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         if(param1.length<1)
         {
            this.view.famugujo("Name too short");
         }
         else
         {
            this.deteja();
         }
         return;
      }

      private function deteja() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = {name:this.name};
         Vokekizac.jugajoj(_loc1_,this.account.dera());
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
            this.byn();
         }
         else
         {
            this.debafev(param2);
         }
         return;
      }

      private function byn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mecanalos.dispatch(this.name);
         this.closeDialogs.dispatch();
         return;
      }

      private function debafev(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.famugujo(param1);
         this.view.kiwimuj();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}