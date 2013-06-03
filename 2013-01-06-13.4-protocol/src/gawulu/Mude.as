package gawulu
{
[CLASS1306]   import flash.media.Sound;
   import flash.media.SoundChannel;
   import jutesesel.Qibigagal;
   import natus.Hewoda;
   import flash.net.URLRequest;
   import flash.media.SoundTransform;
   import aaa.Parameters;
   import com.company.googleanalytics.GA;


   public class Mude extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mude() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var sajis:Sound = null;

      private static var cygijar:SoundChannel = null;

      public static function load() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Hewoda = Qibigagal.husuha().getInstance(Hewoda);
         var _loc2_:* = _loc1_.static(true)+"/music/sorc.mp3";
         sajis=new Sound();
         sajis.load(new URLRequest(_loc2_));
         cygijar=sajis.play(0,int.MAX_VALUE,new SoundTransform(Parameters.data_.playMusic?0.3:0));
         return;
      }

      public static function guwat(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         GA.global().trackEvent("sound",param1?"musicOn":"musicOff");
         Parameters.data_.playMusic=param1;
         Parameters.save();
         cygijar.soundTransform=new SoundTransform(Parameters.data_.playMusic?0.3:0);
         return;
      }
   }
[/CLASS]
}