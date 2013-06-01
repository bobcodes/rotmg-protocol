package com.company.assembleegameclient.objects
{
[CLASS1281]   import pigeguwo.Jazyv;
   import pigeguwo.Mefu;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Currency;
   import com.company.assembleegameclient.util.GuildUtil;


   public class GuildMerchant extends SellableObject implements Gofa
   {
      public function GuildMerchant(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         price_=int(param1.Price);
         currency_=Currency.kecevy;
         this.description_=param1.Description;
         kaj=GuildUtil.ruhijiv;
         return;
      }

      public var description_:String;

      override public function soldObjectName() : String {
         return ObjectLibrary.mafiwape[objectType_];
      }

      override public function soldObjectInternalName() : String {
         var _loc1_:XML = ObjectLibrary.zedij[objectType_];
         return _loc1_.@id.toString();
      }

      override public function getTooltip() : Jazyv {
         var _loc1_:Jazyv = new Mefu(3552822,10197915,this.soldObjectName(),this.description_,200);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         return ObjectLibrary.getRedrawnTextureFromType(objectType_,80,true);
      }
   }
[/CLASS]
}