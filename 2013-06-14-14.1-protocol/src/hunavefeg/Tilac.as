package hunavefeg
{


   public class Tilac extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tilac() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const FATAL:uint = 2;

      public static const ERROR:uint = 4;

      public static const WARN:uint = 8;

      public static const INFO:uint = 16;

      public static const DEBUG:uint = 32;

      public static const NAME:Array = [0,0,"FATAL",0,"ERROR",0,0,0,"WARN",0,0,0,0,0,0,0,"INFO",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"DEBUG"];
   }

}