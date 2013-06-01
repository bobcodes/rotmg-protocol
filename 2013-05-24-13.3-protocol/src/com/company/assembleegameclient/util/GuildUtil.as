package com.company.assembleegameclient.util
{
   import aaa.rotmg.i18n.I18nKeys;
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

      public static const noqo:int = 0;

      public static const mocuwili:int = 10;

      public static const cuzigol:int = 20;

      public static const badopodo:int = 30;

      public static const pohehi:int = 40;

      public static const wakufufo:int = 50;

      public static function kyrehorek(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1)
         {
            case noqo:
               return hiqo(I18nKeys.wawitu);
            case mocuwili:
               return hiqo(I18nKeys.muwe);
            case cuzigol:
               return hiqo(I18nKeys.sykum);
            case badopodo:
               return hiqo(I18nKeys.rizoja);
            case pohehi:
               return hiqo(I18nKeys.vopasyz);
            default:
               return hiqo(I18nKeys.corekolac);
         }
      }

      private static function hiqo(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "{"+param1+"}";
      }

      public static function ditedabyj(param1:int, param2:int) : BitmapData {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:BitmapData = null;
         switch(param1)
         {
            case noqo:
               _loc3_=AssetLibrary.jeqycu("lofiInterfaceBig",20);
               break;
            case mocuwili:
               _loc3_=AssetLibrary.jeqycu("lofiInterfaceBig",19);
               break;
            case cuzigol:
               _loc3_=AssetLibrary.jeqycu("lofiInterfaceBig",18);
               break;
            case badopodo:
               _loc3_=AssetLibrary.jeqycu("lofiInterfaceBig",17);
               break;
            case pohehi:
               _loc3_=AssetLibrary.jeqycu("lofiInterfaceBig",16);
               break;
         }
         return TextureRedrawer.redraw(_loc3_,param2,true,0,0,true);
      }

      public static function vemitijim(param1:int) : BitmapData {
         var _loc2_:BitmapData = AssetLibrary.jeqycu("lofiObj3",226);
         return TextureRedrawer.redraw(_loc2_,param1,true,0,0,true);
      }

      public static function pipynira(param1:int, param2:int, param3:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param2==param3)
         {
            return false;
         }
         if(param1==pohehi&&param2<pohehi&&param3<pohehi)
         {
            return true;
         }
         if(param1==badopodo&&param2<badopodo&&param3<=badopodo)
         {
            return true;
         }
         if(param1==cuzigol&&param2<cuzigol&&param3<cuzigol)
         {
            return true;
         }
         return false;
      }

      public static function celojed(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1)
         {
            case noqo:
               return mocuwili;
            case mocuwili:
               return cuzigol;
            case cuzigol:
               return badopodo;
            default:
               return pohehi;
         }
      }

      public static function virywepub(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:int = celojed(param2);
         return pipynira(param1,param2,_loc3_);
      }

      public static function mose(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(param1)
         {
            case cuzigol:
               return mocuwili;
            case badopodo:
               return cuzigol;
            case pohehi:
               return badopodo;
            default:
               return noqo;
         }
      }

      public static function figihap(param1:int, param2:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:int = mose(param2);
         return pipynira(param1,param2,_loc3_);
      }

      public static function gizar(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1>=cuzigol&&param2<param1;
      }
   }

}