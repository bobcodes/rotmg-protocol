package dorepoji
{
   import flash.utils.Dictionary;
   import flash.media.Sound;
   import flash.events.IOErrorEvent;
   import daqun.Qobeta;
   import sijizoh.Duq;
   import flash.net.URLRequest;
   import flash.media.SoundTransform;
   import flash.media.SoundChannel;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.events.Event;


   public class Kadido extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kadido() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var ninogo:String;

      private static const donesef:String = "{URLBASE}/sfx/{NAME}.mp3";

      public static var puharogov:Dictionary = new Dictionary();

      private static var radadagyt:Dictionary = new Dictionary(true);

      public static function load(param1:String) : Sound {
         return puharogov[param1]=(puharogov[param1])||(damob(param1));
      }

      public static function damob(param1:String) : Sound {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sound = new Sound();
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         _loc2_.load(fajicifog(param1));
         return _loc2_;
      }

      private static function qifumuwag() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var setup:Qobeta = null;
         var base:String = "";
         try
         {
            setup=Duq.pamazo().getInstance(Qobeta);
            base=setup.kegadag(true);
         }
         catch(error:Error)
         {
            if(!(_loc3_&&(_loc2_)))
            {
               base="localhost";
            }
         }
         return base;
      }

      private static function fajicifog(param1:String) : URLRequest {
         var _loc3_:* = true;
         var _loc4_:* = false;
         ninogo=(ninogo)||(qifumuwag());
         var _loc2_:String = donesef.replace("{URLBASE}",ninogo).replace("{NAME}",param1);
         return new URLRequest(_loc2_);
      }

      public static function play(param1:String, param2:Number=1.0, param3:Boolean=true) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var actualVolume:Number = NaN;
         var trans:SoundTransform = null;
         var channel:SoundChannel = null;
         var name:String = param1;
         var volume:Number = param2;
         var isFX:Boolean = param3;
         var sound:Sound = load(name);
         actualVolume=(Parameters.data_.playSFX)&&(isFX)||(!isFX)&&(Parameters.data_.playPewPew)?volume:0;
         trans=new SoundTransform(actualVolume);
         channel=sound.play(0,0,trans);
         channel.addEventListener(Event.SOUND_COMPLETE,tacanab,false,0,true);
         radadagyt[channel]=volume;
         return;
      }

      private static function tacanab(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:SoundChannel = param1.target as SoundChannel;
         delete radadagyt[[_loc2_]];
         return;
      }

      public static function kumad() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:SoundChannel = null;
         var _loc2_:SoundTransform = null;
         for each (_loc1_ in radadagyt)
         {
            _loc2_=_loc1_.soundTransform;
            _loc2_.volume=Parameters.data_.playSFX?radadagyt[_loc1_]:0;
            _loc1_.soundTransform=_loc2_;
         }
         return;
      }

      public static function onIOError(param1:IOErrorEvent) : void {
         return;
      }
   }

}