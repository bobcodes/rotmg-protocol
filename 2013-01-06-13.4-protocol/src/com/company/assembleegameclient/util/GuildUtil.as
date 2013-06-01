package com.company.assembleegameclient.util
{
[CLASS1044]   import haqakel.Kefyfa;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;


   public class GuildUtil extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function GuildUtil() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const vyg:int = 0;

      public static const zobagemo:int = 10;

      public static const jaw:int = 20;

      public static const ruhijiv:int = 30;

      public static const tyq:int = 40;

      public static const myvuleh:int = 50;

      public static function bihuw(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case vyg:
               return hyhonypol(Kefyfa.ruvebejo);
            case zobagemo:
               return hyhonypol(Kefyfa.quvu);
            case jaw:
               return hyhonypol(Kefyfa.jawowa);
            case ruhijiv:
               return hyhonypol(Kefyfa.rabe);
            case tyq:
               return hyhonypol(Kefyfa.byny);
            default:
               return hyhonypol(Kefyfa.cokukagul);
         }
      }

      private static function hyhonypol(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "{"+param1+"}";
      }

      public static function qylybacub(param1:int, param2:int) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:BitmapData = null;
         switch(null)
         {
            case vyg:
               _loc3_=AssetLibrary.zovy("lofiInterfaceBig",20);
               break;
            case zobagemo:
               _loc3_=AssetLibrary.zovy("lofiInterfaceBig",19);
               break;
            case jaw:
               _loc3_=AssetLibrary.zovy("lofiInterfaceBig",18);
               break;
            case ruhijiv:
               _loc3_=AssetLibrary.zovy("lofiInterfaceBig",17);
               break;
            case tyq:
               _loc3_=AssetLibrary.zovy("lofiInterfaceBig",16);
               break;
         }
         return TextureRedrawer.redraw(_loc3_,param2,true,0,0,true);
      }

      public static function tuciquci(param1:int) : BitmapData {
         var _loc2_:BitmapData = AssetLibrary.zovy("lofiObj3",226);
         return TextureRedrawer.redraw(_loc2_,param1,true,0,0,true);
      }

      public static function vemimigin(param1:int, param2:int, param3:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param2==param3)
         {
            return false;
         }
         if(param1==tyq&&param2<tyq&&param3<tyq)
         {
            return true;
         }
         if(param1==ruhijiv&&param2<ruhijiv&&param3<=ruhijiv)
         {
            return true;
         }
         if(param1==jaw&&param2<jaw&&param3<jaw)
         {
            return true;
         }
         return false;
      }

      public static function megyfuqol(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case vyg:
               return zobagemo;
            case zobagemo:
               return jaw;
            case jaw:
               return ruhijiv;
            default:
               return tyq;
         }
      }

      public static function kyjeb(param1:int, param2:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:int = megyfuqol(param2);
         return vemimigin(param1,param2,_loc3_);
      }

      public static function typynega(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case jaw:
               return zobagemo;
            case ruhijiv:
               return jaw;
            case tyq:
               return ruhijiv;
            default:
               return vyg;
         }
      }

      public static function fider(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:int = typynega(param2);
         return vemimigin(param1,param2,_loc3_);
      }

      public static function ramerum(param1:int, param2:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1>=jaw&&param2<param1;
      }
   }
[/CLASS]
}