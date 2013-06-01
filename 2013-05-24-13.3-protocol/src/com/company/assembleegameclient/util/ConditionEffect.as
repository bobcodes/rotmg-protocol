package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import com.company.util.AssetLibrary;
   import com.company.util.PointUtil;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.BitmapFilterQuality;


   public class ConditionEffect extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ConditionEffect(param1:String, param2:uint, param3:Array, param4:String="") {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.name_=param1;
         this.bit_=param2;
         this.iconOffsets_=param3;
         this.hopogy=param4;
         return;
      }

      public static const rirudewy:uint = 0;

      public static const jujom:uint = 1;

      public static const lerowu:uint = 2;

      public static const riroz:uint = 3;

      public static const mofub:uint = 4;

      public static const boj:uint = 5;

      public static const debyk:uint = 6;

      public static const qil:uint = 7;

      public static const jaluw:uint = 8;

      public static const qul:uint = 9;

      public static const hibal:uint = 10;

      public static const wicyteqa:uint = 11;

      public static const havihi:uint = 12;

      public static const gisalu:uint = 13;

      public static const huhi:uint = 14;

      public static const ziho:uint = 15;

      public static const qutymu:uint = 16;

      public static const geleqype:uint = 17;

      public static const movon:uint = 18;

      public static const dydehyh:uint = 19;

      public static const mubuna:uint = 20;

      public static const soqyluwec:uint = 21;

      public static const ruli:uint = 22;

      public static const tugujamo:uint = 23;

      public static const zisi:uint = 24;

      public static const syfer:uint = 25;

      public static const lelulepu:uint = 26;

      public static const qisipor:uint = 27;

      public static const nabisorub:uint = 28;

      public static const susaq:uint = 29;

      public static const lylo:uint = 1<<jujom-1;

      public static const qec:uint = 1<<lerowu-1;

      public static const nasopej:uint = 1<<riroz-1;

      public static const jusime:uint = 1<<mofub-1;

      public static const ditaj:uint = 1<<boj-1;

      public static const nenake:uint = 1<<debyk-1;

      public static const qyr:uint = 1<<qil-1;

      public static const kusihe:uint = 1<<jaluw-1;

      public static const leny:uint = 1<<qul-1;

      public static const fatumuzac:uint = 1<<hibal-1;

      public static const wihu:uint = 1<<wicyteqa-1;

      public static const wone:uint = 1<<havihi-1;

      public static const puzefap:uint = 1<<gisalu-1;

      public static const bizi:uint = 1<<huhi-1;

      public static const pecyq:uint = 1<<ziho-1;

      public static const pusel:uint = 1<<qutymu-1;

      public static const zehed:uint = 1<<geleqype-1;

      public static const bamazybyn:uint = 1<<movon-1;

      public static const girobuqup:uint = 1<<dydehyh-1;

      public static const rigej:uint = 1<<mubuna-1;

      public static const gyceku:uint = 1<<soqyluwec-1;

      public static const birenuje:uint = 1<<ruli-1;

      public static const fulozazu:uint = 1<<tugujamo-1;

      public static const sisyn:uint = 1<<zisi-1;

      public static const ceryp:uint = 1<<syfer-1;

      public static const raf:uint = 1<<lelulepu-1;

      public static const lymilaq:uint = 1<<qisipor-1;

      public static const hyheqafis:uint = 1<<nabisorub-1;

      public static const wuk:uint = 1<<susaq-1;

      public static const punegopo:uint = fatumuzac|kusihe|gyceku;

      public static var effects_:Vector.<ConditionEffect> = new Vector.<ConditionEffect>(30);

      private static var hufog:Object = null;

      public static function bepavy(param1:String) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:uint = 0;
         if(hufog==null)
         {
            hufog=new Object();
            _loc2_=0;
            while(_loc2_<effects_.length)
            {
               hufog[effects_[_loc2_].name_]=_loc2_;
               _loc2_++;
            }
         }
         return hufog[param1];
      }

      public static function gyqaluqih(param1:String) : ConditionEffect {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:ConditionEffect = null;
         for each (_loc2_ in effects_)
         {
            if(_loc2_.name_==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      public static function vivumec(param1:uint, param2:Vector.<BitmapData>, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<BitmapData> = null;
         while(param1!=0)
         {
            _loc4_=param1&param1-1;
            _loc5_=param1^_loc4_;
            _loc6_=cevumom(_loc5_);
            if(_loc6_!=null)
            {
               param2.push(_loc6_[param3%_loc6_.length]);
            }
            param1=_loc4_;
         }
         return;
      }

      private static var fitaqejam:Object = null;

      private static const GLOW_FILTER:GlowFilter = new GlowFilter(0,0.3,6,6,2,BitmapFilterQuality.LOW,false,false);

      private static function cevumom(param1:uint) : Vector.<BitmapData> {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Matrix = null;
         var _loc3_:uint = 0;
         var _loc4_:Vector.<BitmapData> = null;
         var _loc5_:* = 0;
         var _loc6_:BitmapData = null;
         if(fitaqejam==null)
         {
            fitaqejam=new Object();
            _loc2_=new Matrix();
            _loc2_.translate(4,4);
            _loc3_=0;
            while(_loc3_<effects_.length)
            {
               _loc4_=null;
               if(effects_[_loc3_].iconOffsets_!=null)
               {
                  _loc4_=new Vector.<BitmapData>();
                  _loc5_=0;
                  while(_loc5_<effects_[_loc3_].iconOffsets_.length)
                  {
                     _loc6_=new BitmapData(16,16,true,0);
                     _loc6_.draw(AssetLibrary.jeqycu("lofiInterface2",effects_[_loc3_].iconOffsets_[_loc5_]),_loc2_);
                     _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,4.294967295E9);
                     _loc6_.applyFilter(_loc6_,_loc6_.rect,PointUtil.qohusovu,GLOW_FILTER);
                     _loc4_.push(_loc6_);
                     _loc5_++;
                  }
               }
               fitaqejam[effects_[_loc3_].bit_]=_loc4_;
               _loc3_++;
            }
         }
         return fitaqejam[param1];
      }

      public var name_:String;

      public var bit_:uint;

      public var iconOffsets_:Array;

      public var hopogy:String;
   }

}