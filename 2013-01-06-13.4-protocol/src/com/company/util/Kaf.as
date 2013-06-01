package com.company.util
{
[CLASS1327]   import flash.system.Capabilities;


   public class Kaf extends Object
   {
      public function Kaf() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function hija() : String {
         return kaforejoz("avHardwareDisable")+kaforejoz("hasAccessibility")+kaforejoz("hasAudio")+kaforejoz("hasAudioEncoder")+kaforejoz("hasEmbeddedVideo")+kaforejoz("hasIME")+kaforejoz("hasMP3")+kaforejoz("hasPrinting")+kaforejoz("hasScreenBroadcast")+kaforejoz("hasScreenPlayback")+kaforejoz("hasStreamingAudio")+kaforejoz("hasStreamingVideo")+kaforejoz("hasTLS")+kaforejoz("hasVideoEncoder")+kaforejoz("isDebugger")+kaforejoz("language")+kaforejoz("localFileReadDisable")+kaforejoz("manufacturer")+kaforejoz("os")+kaforejoz("pixelAspectRatio")+kaforejoz("playerType")+kaforejoz("screenColor")+kaforejoz("screenDPI")+kaforejoz("screenResolutionX")+kaforejoz("screenResolutionY")+kaforejoz("version");
      }

      private static function kaforejoz(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1+": "+Capabilities[param1]+"\n";
      }
   }
[/CLASS]
}