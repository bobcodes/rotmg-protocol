package jufu
{
   import pugem.Account;
   import kylelimib.Zazasinip;
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.util.Wigi;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Jawojicyw extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jawojicyw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.poc=new Qanyduk();
         super();
         return;
      }

      private static const jagip:int = 2600;

      public var account:Account;

      public var model:Zazasinip;

      public var poc:Qanyduk;

      private var jimuzoc:Number;

      public function hoqa() : Boolean {
         return this.jimuzoc>0;
      }

      public function cydasina(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jimuzoc=param1;
         return;
      }

      public function boqagofi() : Number {
         return this.jimuzoc;
      }

      public function rer() : Number {
         return Math.ceil(Wigi.noqinid(this.boqagofi()));
      }

      public function qycosac() : Offer {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Offer = null;
         if(!this.model.puputazes)
         {
            return null;
         }
         for each (_loc1_ in this.model.puputazes.offerList)
         {
            if(_loc1_.realmGold_==jagip)
            {
               return _loc1_;
            }
         }
         return null;
      }

      public function vozekiw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cydasina(-1);
         this.poc.dispatch();
         return;
      }
   }

}