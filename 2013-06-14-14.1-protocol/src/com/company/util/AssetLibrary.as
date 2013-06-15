package com.company.util
{
   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import flash.media.Sound;
   import flash.media.SoundTransform;


   public class AssetLibrary extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function AssetLibrary(param1:StaticEnforcer) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         return;
      }

      private static var gisydi:Dictionary = new Dictionary();

      private static var lero:Dictionary = new Dictionary();

      private static var logodeky:Dictionary = new Dictionary();

      private static var kodukice:Dictionary = new Dictionary();

      public static function tomo(param1:String, param2:BitmapData) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         gisydi[param1]=param2;
         kodukice[param2]=param1;
         return;
      }

      public static function medom(param1:String, param2:BitmapData, param3:int, param4:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         gisydi[param1]=param2;
         var _loc5_:Fufudol = new Fufudol();
         _loc5_.addFromBitmapData(param2,param3,param4);
         lero[param1]=_loc5_;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_.gisydi.length)
         {
            kodukice[_loc5_.gisydi[_loc6_]]=[param1,_loc6_];
            _loc6_++;
         }
         return;
      }

      public static function duhupet(param1:String, param2:BitmapData) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Fufudol = lero[param1];
         if(_loc3_==null)
         {
            _loc3_=new Fufudol();
            lero[param1]=_loc3_;
         }
         _loc3_.add(param2);
         var _loc4_:int = _loc3_.gisydi.length-1;
         kodukice[_loc3_.gisydi[_loc4_]]=[param1,_loc4_];
         return;
      }

      public static function retyqage(param1:String, param2:Class) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Array = logodeky[param1];
         if(_loc3_==null)
         {
            logodeky[param1]=new Array();
         }
         logodeky[param1].push(param2);
         return;
      }

      public static function tipepifok(param1:BitmapData) : Object {
         return kodukice[param1];
      }

      public static function getImage(param1:String) : BitmapData {
         return gisydi[param1];
      }

      public static function bugu(param1:String) : Fufudol {
         return lero[param1];
      }

      public static function tem(param1:String, param2:int) : BitmapData {
         var _loc3_:Fufudol = lero[param1];
         return _loc3_.gisydi[param2];
      }

      public static function fevejep(param1:String) : Sound {
         var _loc2_:Array = logodeky[param1];
         var _loc3_:int = Math.random()*_loc2_.length;
         return new logodeky[param1][_loc3_]();
      }

      public static function nary(param1:String, param2:Number=1.0) : void {
         var [OFS3]_loc7_:* = [/OFS]false;
         var [OFS5]_loc8_:* = [/OFS]true;
         var [OFS18]_loc3_:Array = [/OFS][OFS9]logodeky[/OFS][[OFS12]param1[/OFS]];
         var [OFS29]_loc4_:int = [/OFS][OFS19]Math[/OFS].[OFS21]random[/OFS][OFS21]([/OFS][OFS21])[/OFS][OFS27]*[/OFS][OFS24]_loc3_[/OFS].[OFS25]length[/OFS];
         var [OFS48]_loc5_:Sound = [/OFS][OFS43]new [/OFS][OFS31]logodeky[/OFS][[OFS34]param1[/OFS]][[OFS38]_loc4_[/OFS]][OFS43]([/OFS][OFS43])[/OFS];
         var [OFS54]_loc6_:SoundTransform = [/OFS][OFS50]null[/OFS];
         if([OFS56]param2[/OFS][OFS59]!=[/OFS][OFS57]1[/OFS])
         {
            [OFS74]_loc6_=[/OFS][OFS67]new [/OFS][OFS67]SoundTransform[/OFS][OFS67]([/OFS][OFS66]param2[/OFS][OFS67])[/OFS];
         }
         [OFS76]_loc5_[/OFS].[OFS83]play[/OFS][OFS83]([/OFS][OFS78]0[/OFS][OFS83],[/OFS][OFS78]0[/OFS][OFS83],[/OFS][OFS81]_loc6_[/OFS][OFS83])[/OFS];
         [OFS87]return[/OFS];
      }
   }

}

   class StaticEnforcer extends Object
   {
      function StaticEnforcer() {
         super();
         return;
      }
   }
