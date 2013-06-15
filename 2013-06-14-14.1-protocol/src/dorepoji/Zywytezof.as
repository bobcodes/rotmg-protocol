package dorepoji
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import sijizoh.Duq;
   import daqun.Qobeta;
   import flash.net.URLRequest;
   import flash.media.SoundTransform;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.googleanalytics.GA;


   public class Zywytezof extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zywytezof() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var bar:Sound = null;

      private static var taw:SoundChannel = null;

      public static function load() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Qobeta = Duq.pamazo().getInstance(Qobeta);
         var _loc2_:* = _loc1_.kegadag(true)+"/music/sorc.mp3";
         bar=new Sound();
         bar.load(new URLRequest(_loc2_));
         taw=bar.play(0,int.MAX_VALUE,new SoundTransform(RotmgParameters.data_.playMusic?0.3:0));
         return;
      }

      public static function wyda(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         GA.global().trackEvent("sound",param1?"musicOn":"musicOff");
         RotmgParameters.data_.playMusic=param1;
         RotmgParameters.save();
         taw.soundTransform=new SoundTransform(RotmgParameters.data_.playMusic?0.3:0);
         return;
      }
   }

}