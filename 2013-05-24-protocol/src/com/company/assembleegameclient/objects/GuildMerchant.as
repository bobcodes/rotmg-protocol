package com.company.assembleegameclient.objects
{
   import povopito.Ryduwi;
   import povopito.Jodehozut;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Currency;
   import com.company.assembleegameclient.util.GuildUtil;


   public class GuildMerchant extends SellableObject implements Putafyhil
   {
      public function GuildMerchant(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         price_=int(param1.Price);
         currency_=Currency.kizuz;
         this.description_=param1.Description;
         qaloken=GuildUtil.badopodo;
         return;
      }

      public var description_:String;

      override public function soldObjectName() : String {
         return ObjectLibrary.fajocyd[objectType_];
      }

      override public function soldObjectInternalName() : String {
         var _loc1_:XML = ObjectLibrary.tem[objectType_];
         return _loc1_.@id.toString();
      }

      override public function getTooltip() : Ryduwi {
         var _loc1_:Ryduwi = new Jodehozut(3552822,10197915,this.soldObjectName(),this.description_,200);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         return ObjectLibrary.getRedrawnTextureFromType(objectType_,80,true);
      }
   }

}