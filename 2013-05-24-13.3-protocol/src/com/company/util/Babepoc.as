package com.company.util
{
   import flash.system.Capabilities;


   public class Babepoc extends Object
   {
      public function Babepoc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function hycis() : String {
         return bywa("avHardwareDisable")+bywa("hasAccessibility")+bywa("hasAudio")+bywa("hasAudioEncoder")+bywa("hasEmbeddedVideo")+bywa("hasIME")+bywa("hasMP3")+bywa("hasPrinting")+bywa("hasScreenBroadcast")+bywa("hasScreenPlayback")+bywa("hasStreamingAudio")+bywa("hasStreamingVideo")+bywa("hasTLS")+bywa("hasVideoEncoder")+bywa("isDebugger")+bywa("language")+bywa("localFileReadDisable")+bywa("manufacturer")+bywa("os")+bywa("pixelAspectRatio")+bywa("playerType")+bywa("screenColor")+bywa("screenDPI")+bywa("screenResolutionX")+bywa("screenResolutionY")+bywa("version");
      }

      private static function bywa(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1+": "+Capabilities[param1]+"\n";
      }
   }

}