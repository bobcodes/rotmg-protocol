package dorepoji
{
   import flash.media.SoundTransform;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.googleanalytics.GA;


   public class Mobu extends Object
   {
      public function Mobu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var bugoqehi:SoundTransform;

      public static function load() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         bugoqehi=new SoundTransform(RotmgParameters.data_.playSFX?1:0);
         return;
      }

      public static function qunyneviz(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         GA.global().trackEvent("sound",param1?"soundOn":"soundOff");
         RotmgParameters.data_.playSFX=param1;
         RotmgParameters.save();
         Kadido.kumad();
         return;
      }
   }

}