package kagijawil
{
   import aaa.rotmg.account.Account;
   import nasokuqa.Lotop;
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.util.Pygymy;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Cibiqot extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cibiqot() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lacib=new Hugyqufyq();
         super();
         return;
      }

      private static const lejihu:int = 2600;

      public var account:Account;

      public var model:Lotop;

      public var lacib:Hugyqufyq;

      private var taryk:Number;

      public function lefizov() : Boolean {
         return this.taryk>0;
      }

      public function novebe(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.taryk=param1;
         return;
      }

      public function rajo() : Number {
         return this.taryk;
      }

      public function honedu() : Number {
         return Math.ceil(Pygymy.buqe(this.rajo()));
      }

      public function byjigi() : Offer {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Offer = null;
         if(!this.model.mynuroqyl)
         {
            return null;
         }
         for each (_loc1_ in this.model.mynuroqyl.offerList)
         {
            if(_loc1_.realmGold_==lejihu)
            {
               return _loc1_;
            }
         }
         return null;
      }

      public function venum() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.novebe(-1);
         this.lacib.dispatch();
         return;
      }
   }

}