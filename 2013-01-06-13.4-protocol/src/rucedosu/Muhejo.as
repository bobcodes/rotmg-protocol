package rucedosu
{
[CLASS570]   import tysenyzy.Zovisis;
   import leselo.Account;
   import kirofyny.Hehuf;
   import com.company.assembleegameclient.objects.SellableObject;
   import sojul.Viropisos;
   import com.company.assembleegameclient.util.Currency;


   public class Muhejo extends Zovisis
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Muhejo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const TEXT:String = "In order to use ${type} you must be a registered user.";

      public var account:Account;

      public var view:SellableObjectPanel;

      public var lyhog:Hehuf;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.dafe.add(this.wew);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.dafe.remove(this.wew);
         return;
      }

      private function wew(param1:SellableObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.account.tuq())
         {
            this.view.gs_.gsc_.buy(param1.objectId_);
         }
         else
         {
            this.lyhog.dispatch(this.hameviw(param1));
         }
         return;
      }

      private function hameviw(param1:SellableObject) : Viropisos {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = TEXT.replace("${type}",Currency.vosuqi(param1.currency_));
         return new Viropisos(_loc2_);
      }
   }
[/CLASS]
}