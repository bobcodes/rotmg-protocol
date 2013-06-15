package com.company.assembleegameclient.objects
{
   import mavew.Qyryl;
   import mavew.Qyrola;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Currency;
   import com.company.assembleegameclient.util.GuildUtil;


   public class GuildMerchant extends SellableObject implements Gim
   {
      public function GuildMerchant(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         price_=int(param1.Price);
         currency_=Currency.huzekisep;
         this.description_=param1.Description;
         lehihafo=GuildUtil.myminik;
         return;
      }

      public var description_:String;

      override public function soldObjectName() : String {
         return ObjectLibrary.kipanudad[objectType_];
      }

      override public function soldObjectInternalName() : String {
         var _loc1_:XML = ObjectLibrary.ziq[objectType_];
         return _loc1_.@id.toString();
      }

      override public function getTooltip() : Qyryl {
         var _loc1_:Qyryl = new Qyrola(3552822,10197915,this.soldObjectName(),this.description_,200);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         return ObjectLibrary.getRedrawnTextureFromType(objectType_,80,true);
      }
   }

}