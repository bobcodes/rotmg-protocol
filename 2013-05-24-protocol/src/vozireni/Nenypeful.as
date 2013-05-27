package vozireni
{
   import flash.media.SoundTransform;
   import aaa.rotmg.config.UserConfig;
   import com.company.googleanalytics.GA;


   public class Nenypeful extends Object
   {
      public function Nenypeful() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var weqap:SoundTransform;

      public static function load() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         weqap=new SoundTransform(UserConfig.data_.playSFX?1:0);
         return;
      }

      public static function rykozad(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         GA.global().trackEvent("sound",param1?"soundOn":"soundOff");
         UserConfig.data_.playSFX=param1;
         UserConfig.save();
         Pozunubu.vopyh();
         return;
      }
   }

}