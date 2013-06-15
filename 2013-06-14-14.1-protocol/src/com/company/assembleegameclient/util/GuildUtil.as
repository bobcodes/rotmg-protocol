package com.company.assembleegameclient.util
{
   import komi.Vibemod;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;


   public class GuildUtil extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function GuildUtil() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const nubiqasel:int = 0;

      public static const huwemyd:int = 10;

      public static const legahuquk:int = 20;

      public static const myminik:int = 30;

      public static const qagupoti:int = 40;

      public static const jaside:int = 50;

      public static function hecuj(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case nubiqasel:
               return pajepiwu(Vibemod.dysyzalys);
            case huwemyd:
               return pajepiwu(Vibemod.jeqovici);
            case legahuquk:
               return pajepiwu(Vibemod.wogude);
            case myminik:
               return pajepiwu(Vibemod.laro);
            case qagupoti:
               return pajepiwu(Vibemod.bimacij);
            default:
               return pajepiwu(Vibemod.hyveci);
         }
      }

      private static function pajepiwu(param1:String) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return "{"+param1+"}";
      }

      public static function difamo(param1:int, param2:int) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:BitmapData = null;
         switch(null)
         {
            case nubiqasel:
               _loc3_=AssetLibrary.tem("lofiInterfaceBig",20);
               break;
            case huwemyd:
               _loc3_=AssetLibrary.tem("lofiInterfaceBig",19);
               break;
            case legahuquk:
               _loc3_=AssetLibrary.tem("lofiInterfaceBig",18);
               break;
            case myminik:
               _loc3_=AssetLibrary.tem("lofiInterfaceBig",17);
               break;
            case qagupoti:
               _loc3_=AssetLibrary.tem("lofiInterfaceBig",16);
               break;
         }
         return TextureRedrawer.redraw(_loc3_,param2,true,0,0,true);
      }

      public static function myzibowa(param1:int) : BitmapData {
         var _loc2_:BitmapData = AssetLibrary.tem("lofiObj3",226);
         return TextureRedrawer.redraw(_loc2_,param1,true,0,0,true);
      }

      public static function joky(param1:int, param2:int, param3:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param2==param3)
         {
            return false;
         }
         if(param1==qagupoti&&param2<qagupoti&&param3<qagupoti)
         {
            return true;
         }
         if(param1==myminik&&param2<myminik&&param3<=myminik)
         {
            return true;
         }
         if(param1==legahuquk&&param2<legahuquk&&param3<legahuquk)
         {
            return true;
         }
         return false;
      }

      public static function qifewyzal(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case nubiqasel:
               return huwemyd;
            case huwemyd:
               return legahuquk;
            case legahuquk:
               return myminik;
            default:
               return qagupoti;
         }
      }

      public static function kyvicarud(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:int = qifewyzal(param2);
         return joky(param1,param2,_loc3_);
      }

      public static function dazy(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case legahuquk:
               return huwemyd;
            case myminik:
               return legahuquk;
            case qagupoti:
               return myminik;
            default:
               return nubiqasel;
         }
      }

      public static function qiworebar(param1:int, param2:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:int = dazy(param2);
         return joky(param1,param2,_loc3_);
      }

      public static function tumujel(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1>=legahuquk&&param2<param1;
      }
   }

}