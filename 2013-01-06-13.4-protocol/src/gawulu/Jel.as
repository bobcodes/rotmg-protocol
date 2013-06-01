package gawulu
{
[CLASS581]   import flash.media.SoundTransform;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.googleanalytics.GA;


   public class Jel extends Object
   {
      public function Jel() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var konol:SoundTransform;

      public static function load() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         konol=new SoundTransform(Parameters.data_.playSFX?1:0);
         return;
      }

      public static function turip(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         GA.global().trackEvent("sound",param1?"soundOn":"soundOff");
         Parameters.data_.playSFX=param1;
         Parameters.save();
         Cuqicyh.zova();
         return;
      }
   }
[/CLASS]
}