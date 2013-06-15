package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.offer.Offer;
   import sijizoh.Duq;
   import pugem.Account;
   import daqun.Qobeta;
   import flash.net.URLVariables;


   public class Tiguziro extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tiguziro(param1:String, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.label_=param1;
         this.rivehyjo=param2;
         this.somuma=param3;
         return;
      }

      public static const kudavoci:Tiguziro = new Tiguziro(Vibemod.nar,"co","");

      public static const kywizi:Tiguziro = new Tiguziro(Vibemod.zal,"ps","P3");

      public static const kuqafogor:Tiguziro = new Tiguziro(Vibemod.bavy,"ps","CH");

      public static const guhydadoq:Vector.<Tiguziro> = new Vector.<Tiguziro>(3);

      public static function muluq(param1:String) : Tiguziro {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Tiguziro = null;
         for each (_loc2_ in guhydadoq)
         {
            if(_loc2_.label_==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      public var label_:String;

      public var rivehyjo:String;

      public var somuma:String;

      public function rezocu(param1:String, param2:String, param3:Offer) : String {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Account = Duq.pamazo().getInstance(Account);
         var _loc5_:Qobeta = Duq.pamazo().getInstance(Qobeta);
         var _loc6_:URLVariables = new URLVariables();
         _loc6_["tok"]=param1;
         _loc6_["exp"]=param2;
         _loc6_["guid"]=_loc4_.getUserId();
         _loc6_["provider"]=this.rivehyjo;
         switch(null)
         {
            case "co":
               _loc6_["jwt"]=param3.jwt_;
               break;
            case "ps":
               _loc6_["jwt"]=param3.jwt_;
               _loc6_["price"]=param3.price_.toString();
               _loc6_["paymentid"]=this.somuma;
               break;
         }
         return _loc5_.kegadag(true)+"/credits/add?"+_loc6_.toString();
      }
   }

}