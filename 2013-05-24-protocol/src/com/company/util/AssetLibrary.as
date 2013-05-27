package com.company.util
{
   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import flash.media.Sound;
   import flash.media.SoundTransform;


   public class AssetLibrary extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function AssetLibrary(param1:StaticEnforcer) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         return;
      }

      private static var butymyres:Dictionary = new Dictionary();

      private static var hydokecir:Dictionary = new Dictionary();

      private static var qecolune:Dictionary = new Dictionary();

      private static var fyladuc:Dictionary = new Dictionary();

      public static function qiwiriqyt(param1:String, param2:BitmapData) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         butymyres[param1]=param2;
         fyladuc[param2]=param1;
         return;
      }

      public static function qovom(param1:String, param2:BitmapData, param3:int, param4:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         butymyres[param1]=param2;
         var _loc5_:Cetol = new Cetol();
         _loc5_.addFromBitmapData(param2,param3,param4);
         hydokecir[param1]=_loc5_;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_.butymyres.length)
         {
            fyladuc[_loc5_.butymyres[_loc6_]]=[param1,_loc6_];
            _loc6_++;
         }
         return;
      }

      public static function silysu(param1:String, param2:BitmapData) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Cetol = hydokecir[param1];
         if(_loc3_==null)
         {
            _loc3_=new Cetol();
            hydokecir[param1]=_loc3_;
         }
         _loc3_.add(param2);
         var _loc4_:int = _loc3_.butymyres.length-1;
         fyladuc[_loc3_.butymyres[_loc4_]]=[param1,_loc4_];
         return;
      }

      public static function cyv(param1:String, param2:Class) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Array = qecolune[param1];
         if(_loc3_==null)
         {
            qecolune[param1]=new Array();
         }
         qecolune[param1].push(param2);
         return;
      }

      public static function qisely(param1:BitmapData) : Object {
         return fyladuc[param1];
      }

      public static function getImage(param1:String) : BitmapData {
         return butymyres[param1];
      }

      public static function watubaroh(param1:String) : Cetol {
         return hydokecir[param1];
      }

      public static function jeqycu(param1:String, param2:int) : BitmapData {
         var _loc3_:Cetol = hydokecir[param1];
         return _loc3_.butymyres[param2];
      }

      public static function pojylopar(param1:String) : Sound {
         var _loc2_:Array = qecolune[param1];
         var _loc3_:int = Math.random()*_loc2_.length;
         return new qecolune[param1][_loc3_]();
      }

      public static function ruzy(param1:String, param2:Number=1.0) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Array = qecolune[param1];
         var _loc4_:int = Math.random()*_loc3_.length;
         var _loc5_:Sound = new qecolune[param1][_loc4_]();
         var _loc6_:SoundTransform = null;
         if(param2!=1)
         {
            _loc6_=new SoundTransform(param2);
         }
         _loc5_.play(0,0,_loc6_);
         return;
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
