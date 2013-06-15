package kofaz
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import cizagamym.Boquzojul;
   import com.company.assembleegameclient.objects.SellableObject;
   import sefylew.Fadyqe;
   import com.company.assembleegameclient.util.Currency;


   public class SellableObjectPanelMediator extends Kyjefe
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function SellableObjectPanelMediator() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const TEXT:String = "SellableObjectPanelMediator.text";

      public var account:Account;

      public var view:SellableObjectPanel;

      public var ridecy:Boquzojul;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.worekijod.add(this.pos);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.worekijod.remove(this.pos);
         return;
      }

      private function pos(param1:SellableObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.account.zuqic())
         {
            this.view.gs_.gsc_.buy(param1.objectId_);
         }
         else
         {
            this.ridecy.dispatch(this.diwu(param1));
         }
         return;
      }

      private function diwu(param1:SellableObject) : Fadyqe {
         return new Fadyqe(TEXT,{type:Currency.tobizes(param1.currency_)});
      }
   }

}