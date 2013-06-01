package com.company.assembleegameclient.util.offer
{


   public class Offer extends Object
   {
      public function Offer(param1:String, param2:Number, param3:int, param4:String, param5:String, param6:String=null) {
         super();
         this.id_=param1;
         this.price_=param2;
         this.realmGold_=param3;
         this.jwt_=param4;
         this.data_=param5;
         this.currency_=param6!=null?param6:"USD";
         return;
      }

      public var id_:String;

      public var price_:Number;

      public var realmGold_:int;

      public var jwt_:String;

      public var data_:String;

      public var currency_:String;

      public var tagline:String;

      public var bonus:int;
   }

}