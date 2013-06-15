package com.company.util
{
   import flash.system.Capabilities;


   public class Hocecu extends Object
   {
      public function Hocecu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function niqose() : String {
         return simoni("avHardwareDisable")+simoni("hasAccessibility")+simoni("hasAudio")+simoni("hasAudioEncoder")+simoni("hasEmbeddedVideo")+simoni("hasIME")+simoni("hasMP3")+simoni("hasPrinting")+simoni("hasScreenBroadcast")+simoni("hasScreenPlayback")+simoni("hasStreamingAudio")+simoni("hasStreamingVideo")+simoni("hasTLS")+simoni("hasVideoEncoder")+simoni("isDebugger")+simoni("language")+simoni("localFileReadDisable")+simoni("manufacturer")+simoni("os")+simoni("pixelAspectRatio")+simoni("playerType")+simoni("screenColor")+simoni("screenDPI")+simoni("screenResolutionX")+simoni("screenResolutionY")+simoni("version");
      }

      private static function simoni(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1+": "+Capabilities[param1]+"\n";
      }
   }

}