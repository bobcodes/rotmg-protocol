package com.company.assembleegameclient.map
{
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.objects.Jerakupej;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;


   public class Qezab extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qezab() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const lego:Dictionary = new Dictionary();

      public static const tem:Dictionary = new Dictionary();

      private static var fek:Dictionary = new Dictionary();

      public static const wotoga:Dictionary = new Dictionary();

      public static var tumu:Dictionary = new Dictionary();

      public static var taqobilug:Polipyva;

      public static function vyce(param1:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         for each (_loc2_ in param1.Ground)
         {
            _loc3_=int(_loc2_.@type);
            lego[_loc3_]=new Polipyva(_loc2_);
            tem[_loc3_]=_loc2_;
            wotoga[_loc3_]=new Jerakupej(_loc2_);
            tumu[String(_loc2_.@id)]=_loc3_;
         }
         taqobilug=lego[255];
         return;
      }

      public static function pelek(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Polipyva = lego[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return _loc2_.id_;
      }

      public static function getBitmapData(param1:int, param2:int=0) : BitmapData {
         return wotoga[param1].getTexture(param2);
      }

      public static function getColor(param1:int) : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         var _loc3_:uint = 0;
         var _loc4_:BitmapData = null;
         if(!fek.hasOwnProperty(param1))
         {
            _loc2_=tem[param1];
            if(_loc2_.hasOwnProperty("Color"))
            {
               _loc3_=uint(_loc2_.Color);
            }
            else
            {
               _loc4_=getBitmapData(param1);
               _loc3_=BitmapUtil.hitav(_loc4_);
            }
            fek[param1]=_loc3_;
         }
         return fek[param1];
      }
   }

}