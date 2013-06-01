package com.company.assembleegameclient.util.offer
{
[CLASS642]   import __AS3__.vec.Vector;


   public class Offers extends Object
   {
      public function Offers(param1:XML) {
         super();
         this.tok=param1.Tok;
         this.exp=param1.Exp;
         this.makeOffers(param1);
         return;
      }

      private static const BEST_DEAL:String = "(Best deal)";

      private static const MOST_POPULAR:String = "(Most popular)";

      public var tok:String;

      public var exp:String;

      public var offerList:Vector.<Offer>;

      private function makeOffers(param1:XML) : void {
         this.makeOfferList(param1);
         this.sortOfferList();
         this.defineBonuses();
         this.defineMostPopularTagline();
         this.defineBestDealTagline();
         return;
      }

      private function makeOfferList(param1:XML) : void {
         var _loc2_:XML = null;
         this.offerList=new Vector.<Offer>(0);
         for each (_loc2_ in param1.Offer)
         {
            this.offerList.push(this.makeOffer(_loc2_));
         }
         return;
      }

      private function makeOffer(param1:XML) : Offer {
         var _loc2_:String = param1.Id;
         var _loc3_:Number = Number(param1.Price);
         var _loc4_:int = int(param1.RealmGold);
         var _loc5_:String = param1.CheckoutJWT;
         var _loc6_:String = param1.Data;
         var _loc7_:String = param1.hasOwnProperty("Currency")?param1.Currency:null;
         return new Offer(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
      }

      private function sortOfferList() : void {
         this.offerList.sort(this.sortOffers);
         return;
      }

      private function defineBonuses() : void {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(this.offerList.length==0)
         {
            return;
         }
         var _loc1_:int = this.offerList[0].realmGold_;
         var _loc2_:int = this.offerList[0].price_;
         var _loc3_:Number = _loc1_/_loc2_;
         var _loc4_:* = 1;
         while(_loc4_<this.offerList.length)
         {
            _loc5_=this.offerList[_loc4_].realmGold_;
            _loc6_=this.offerList[_loc4_].price_;
            _loc7_=_loc6_*_loc3_;
            _loc8_=_loc5_-_loc7_;
            this.offerList[_loc4_].bonus=_loc8_/_loc6_;
            _loc4_++;
         }
         return;
      }

      private function sortOffers(param1:Offer, param2:Offer) : int {
         return param1.price_-param2.price_;
      }

      private function defineMostPopularTagline() : void {
         var _loc1_:Offer = null;
         for each (_loc1_ in this.offerList)
         {
            if(_loc1_.price_==10)
            {
               _loc1_.tagline=MOST_POPULAR;
            }
         }
         return;
      }

      private function defineBestDealTagline() : void {
         this.offerList[this.offerList.length-1].tagline=BEST_DEAL;
         return;
      }
   }
[/CLASS]
}