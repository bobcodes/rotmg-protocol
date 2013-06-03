package gawulu
{
[CLASS589]   import flash.utils.Dictionary;
   import flash.media.Sound;
   import flash.events.IOErrorEvent;
   import natus.Hewoda;
   import jutesesel.Qibigagal;
   import flash.net.URLRequest;
   import flash.media.SoundTransform;
   import flash.media.SoundChannel;
   import aaa.Parameters;
   import flash.events.Event;


   public class Cuqicyh extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cuqicyh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var bafuvul:String;

      private static const lycahyvy:String = "{URLBASE}/sfx/{NAME}.mp3";

      public static var posose:Dictionary = new Dictionary();

      private static var rytup:Dictionary = new Dictionary(true);

      public static function load(param1:String) : Sound {
         return posose[param1]=(posose[param1])||(bocyfogis(param1));
      }

      public static function bocyfogis(param1:String) : Sound {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sound = new Sound();
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         _loc2_.load(semi(param1));
         return _loc2_;
      }

      private static function kyqitugow() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var setup:Hewoda = null;
         var base:String = "";
         try
         {
            setup=Qibigagal.husuha().getInstance(Hewoda);
            base=setup.static(true);
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

      private static function semi(param1:String) : URLRequest {
         var _loc3_:* = true;
         var _loc4_:* = false;
         bafuvul=(bafuvul)||(kyqitugow());
         var _loc2_:String = lycahyvy.replace("{URLBASE}",bafuvul).replace("{NAME}",param1);
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
         channel.addEventListener(Event.SOUND_COMPLETE,hegibepo,false,0,true);
         rytup[channel]=volume;
         return;
      }

      private static function hegibepo(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:SoundChannel = param1.target as SoundChannel;
         delete rytup[[_loc2_]];
         return;
      }

      public static function zova() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:SoundChannel = null;
         var _loc2_:SoundTransform = null;
         for each (_loc1_ in rytup)
         {
            _loc2_=_loc1_.soundTransform;
            _loc2_.volume=Parameters.data_.playSFX?rytup[_loc1_]:0;
            _loc1_.soundTransform=_loc2_;
         }
         return;
      }

      public static function onIOError(param1:IOErrorEvent) : void {
         return;
      }
   }
[/CLASS]
}