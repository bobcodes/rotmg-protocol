package com.company.assembleegameclient.util
{
[CLASS712]   import __AS3__.vec.Vector;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.util.offer.Offer;
   import jutesesel.Qibigagal;
   import leselo.Account;
   import natus.Hewoda;
   import flash.net.URLVariables;


   public class Ruzizi extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Ruzizi(param1:String, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.label_=param1;
         this.pewagola=param2;
         this.bydufima=param3;
         return;
      }

      public static const duho:Ruzizi = new Ruzizi(Kefyfa.rynaze,"co","");

      public static const kary:Ruzizi = new Ruzizi(Kefyfa.jyto,"ps","P3");

      public static const pozefo:Ruzizi = new Ruzizi(Kefyfa.haq,"ps","CH");

      public static const cuzub:Vector.<Ruzizi> = new Vector.<Ruzizi>(3);

      public static function qovozuh(param1:String) : Ruzizi {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Ruzizi = null;
         for each (_loc2_ in cuzub)
         {
            if(_loc2_.label_==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      public var label_:String;

      public var pewagola:String;

      public var bydufima:String;

      public function hewyhip(param1:String, param2:String, param3:Offer) : String {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Account = Qibigagal.husuha().getInstance(Account);
         var _loc5_:Hewoda = Qibigagal.husuha().getInstance(Hewoda);
         var _loc6_:URLVariables = new URLVariables();
         _loc6_["tok"]=param1;
         _loc6_["exp"]=param2;
         _loc6_["guid"]=_loc4_.getUserId();
         _loc6_["provider"]=this.pewagola;
         switch(null)
         {
            case "co":
               _loc6_["jwt"]=param3.jwt_;
               break;
            case "ps":
               _loc6_["jwt"]=param3.jwt_;
               _loc6_["price"]=param3.price_.toString();
               _loc6_["paymentid"]=this.bydufima;
               break;
         }
         return _loc5_.static(true)+"/credits/add?"+_loc6_.toString();
      }
   }
[/CLASS]
}