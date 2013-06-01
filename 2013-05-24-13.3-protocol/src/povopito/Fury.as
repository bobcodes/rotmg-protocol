package povopito
{


   public class Fury extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Fury() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const quky:uint = 65280;

      public static const cugocug:uint = 16711680;

      public static const tiheb:uint = 16777103;

      public static function rerotasu(param1:String, param2:String) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = "<font color=\""+param2+"\">"+param1+"</font>";
         return _loc3_;
      }

      public static function jocup(param1:uint) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return "<font color=\"#"+param1.toString(16)+"\">";
      }

      public static function rig() : String {
         return "</font>";
      }

      public static function cas(param1:Number) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = param1-int(param1);
         return int(_loc2_*10)==0?int(param1).toString():param1.toFixed(1);
      }

      public static function gynuha(param1:Number) : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<0)
         {
            return cugocug;
         }
         if(param1>0)
         {
            return quky;
         }
         return tiheb;
      }
   }

}