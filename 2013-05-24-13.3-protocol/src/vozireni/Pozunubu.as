package vozireni
{
   import flash.utils.Dictionary;
   import flash.media.Sound;
   import flash.events.IOErrorEvent;
   import aaa.rotmg.config.GoogleAppConfig;
   import jag.Giq;
   import flash.net.URLRequest;
   import flash.media.SoundTransform;
   import flash.media.SoundChannel;
   import aaa.rotmg.config.UserConfig;
   import flash.events.Event;


   public class Pozunubu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Pozunubu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var syc:String;

      private static const seca:String = "{URLBASE}/sfx/{NAME}.mp3";

      public static var bybanaji:Dictionary = new Dictionary();

      private static var daqal:Dictionary = new Dictionary(true);

      public static function load(param1:String) : Sound {
         return bybanaji[param1]=(bybanaji[param1])||(fujabi(param1));
      }

      public static function fujabi(param1:String) : Sound {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sound = new Sound();
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         _loc2_.load(nunoqa(param1));
         return _loc2_;
      }

      private static function gunapejag() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var setup:GoogleAppConfig = null;
         var base:String = "";
         try
         {
            setup=Giq.kid().getInstance(GoogleAppConfig);
            base=setup.getRotmgAppUrl(true);
         }
         catch(error:Error)
         {
            if(_loc4_||(_loc3_))
            {
               base="localhost";
            }
         }
         return base;
      }

      private static function nunoqa(param1:String) : URLRequest {
         var _loc3_:* = true;
         var _loc4_:* = false;
         syc=(syc)||(gunapejag());
         var _loc2_:String = seca.replace("{URLBASE}",syc).replace("{NAME}",param1);
         return new URLRequest(_loc2_);
      }

      public static function play(param1:String, param2:Number=1.0, param3:Boolean=true) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var actualVolume:Number = NaN;
         var trans:SoundTransform = null;
         var channel:SoundChannel = null;
         var name:String = param1;
         var volume:Number = param2;
         var isFX:Boolean = param3;
         var sound:Sound = load(name);
         actualVolume=(UserConfig.data_.playSFX)&&(isFX)||(!isFX)&&(UserConfig.data_.playPewPew)?volume:0;
         trans=new SoundTransform(actualVolume);
         channel=sound.play(0,0,trans);
         channel.addEventListener(Event.SOUND_COMPLETE,byvyji,false,0,true);
         daqal[channel]=volume;
         return;
      }

      private static function byvyji(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:SoundChannel = param1.target as SoundChannel;
         delete daqal[[_loc2_]];
         return;
      }

      public static function vopyh() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:SoundChannel = null;
         var _loc2_:SoundTransform = null;
         for each (_loc1_ in daqal)
         {
            _loc2_=_loc1_.soundTransform;
            _loc2_.volume=UserConfig.data_.playSFX?daqal[_loc1_]:0;
            _loc1_.soundTransform=_loc2_;
         }
         return;
      }

      public static function onIOError(param1:IOErrorEvent) : void {
         return;
      }
   }

}