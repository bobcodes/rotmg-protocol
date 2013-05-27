package vozireni
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import jag.Giq;
   import cucowury.Vylasy;
   import flash.net.URLRequest;
   import flash.media.SoundTransform;
   import aaa.rotmg.config.UserConfig;
   import com.company.googleanalytics.GA;


   public class Sugibowel extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sugibowel() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var ficur:Sound = null;

      private static var suk:SoundChannel = null;

      public static function load() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vylasy = Giq.kid().getInstance(Vylasy);
         var _loc2_:* = _loc1_.jodohyfewo(true)+"/music/sorc.mp3";
         ficur=new Sound();
         ficur.load(new URLRequest(_loc2_));
         suk=ficur.play(0,int.MAX_VALUE,new SoundTransform(UserConfig.data_.playMusic?0.3:0));
         return;
      }

      public static function nazykep(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         GA.global().trackEvent("sound",param1?"musicOn":"musicOff");
         UserConfig.data_.playMusic=param1;
         UserConfig.save();
         suk.soundTransform=new SoundTransform(UserConfig.data_.playMusic?0.3:0);
         return;
      }
   }

}