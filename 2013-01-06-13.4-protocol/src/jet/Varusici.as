package jet
{
[CLASS342]   import leselo.Account;
   import helepebas.Zedypina;
   import tinava.Dab;
   import com.company.assembleegameclient.util.Guleboqi;
   import com.company.assembleegameclient.util.offer.Offer;


   public class Varusici extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Varusici() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rudysenih=new Dab();
         super();
         return;
      }

      private static const puwilafoj:int = 2600;

      public var account:Account;

      public var model:Zedypina;

      public var rudysenih:Dab;

      private var gylyr:Number;

      public function zupejime() : Boolean {
         return this.gylyr>0;
      }

      public function zapefor(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gylyr=param1;
         return;
      }

      public function nisyso() : Number {
         return this.gylyr;
      }

      public function jaluky() : Number {
         return Math.ceil(Guleboqi.puw(this.nisyso()));
      }

      public function vypiqyq() : Offer {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Offer = null;
         if(!this.model.cok)
         {
            return null;
         }
         for each (_loc1_ in this.model.cok.offerList)
         {
            if(_loc1_.realmGold_==puwilafoj)
            {
               return _loc1_;
            }
         }
         return null;
      }

      public function niworar() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zapefor(-1);
         this.rudysenih.dispatch();
         return;
      }
   }
[/CLASS]
}