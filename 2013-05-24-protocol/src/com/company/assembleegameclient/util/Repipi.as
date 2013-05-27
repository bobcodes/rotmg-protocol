package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.util.offer.Offer;
   import jag.Giq;
   import aaa.rotmg.account.Account;
   import aaa.rotmg.config.GoogleAppConfig;
   import flash.net.URLVariables;


   public class Repipi extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Repipi(param1:String, param2:String, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.label_=param1;
         this.diparid=param2;
         this.mizyg=param3;
         return;
      }

      public static const heqy:Repipi = new Repipi(I18nKeys.jucogu,"co","");

      public static const sev:Repipi = new Repipi(I18nKeys.juhygarad,"ps","P3");

      public static const sobelowe:Repipi = new Repipi(I18nKeys.sulu,"ps","CH");

      public static const myz:Vector.<Repipi> = new Vector.<Repipi>(3);

      public static function pomyrory(param1:String) : Repipi {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Repipi = null;
         for each (_loc2_ in myz)
         {
            if(_loc2_.label_==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      public var label_:String;

      public var diparid:String;

      public var mizyg:String;

      public function datol(param1:String, param2:String, param3:Offer) : String {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Account = Giq.kid().getInstance(Account);
         var _loc5_:GoogleAppConfig = Giq.kid().getInstance(GoogleAppConfig);
         var _loc6_:URLVariables = new URLVariables();
         _loc6_["tok"]=param1;
         _loc6_["exp"]=param2;
         _loc6_["guid"]=_loc4_.getUserId();
         _loc6_["provider"]=this.diparid;
         switch(this.diparid)
         {
            case "co":
               _loc6_["jwt"]=param3.jwt_;
               break;
            case "ps":
               _loc6_["jwt"]=param3.jwt_;
               _loc6_["price"]=param3.price_.toString();
               _loc6_["paymentid"]=this.mizyg;
               break;
         }
         return _loc5_.getRotmgAppUrl(true)+"/credits/add?"+_loc6_.toString();
      }
   }

}