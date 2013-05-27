package biqacufo
{
   import qov.Kalefu;
   import ruwa.Account;
   import wegyluke.Hez;
   import com.company.assembleegameclient.objects.SellableObject;
   import kat.Puqyfebal;
   import com.company.assembleegameclient.util.Currency;


   public class Gefewyji extends Kalefu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Gefewyji() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const TEXT:String = "In order to use ${type} you must be a registered user.";

      public var account:Account;

      public var view:SellableObjectPanel;

      public var naval:Hez;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.jerike.add(this.bymidala);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.jerike.remove(this.bymidala);
         return;
      }

      private function bymidala(param1:SellableObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.account.bugi())
         {
            this.view.gs_.gsc_.buy(param1.objectId_);
         }
         else
         {
            this.naval.dispatch(this.matigi(param1));
         }
         return;
      }

      private function matigi(param1:SellableObject) : Puqyfebal {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = TEXT.replace("${type}",Currency.jarycu(param1.currency_));
         return new Puqyfebal(_loc2_);
      }
   }

}