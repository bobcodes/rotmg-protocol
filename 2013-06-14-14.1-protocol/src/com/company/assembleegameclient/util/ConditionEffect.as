package com.company.assembleegameclient.util
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import com.company.util.AssetLibrary;
   import com.company.util.PointUtil;
   import komi.Vibemod;
   import flash.filters.BitmapFilterQuality;


   public class ConditionEffect extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ConditionEffect(param1:String, param2:uint, param3:Array, param4:String="") {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.name_=param1;
         this.bit_=param2;
         this.iconOffsets_=param3;
         this.damalycyw=param4;
         return;
      }

      public static const loqe:uint = 0;

      public static const husu:uint = 1;

      public static const dele:uint = 2;

      public static const pusosu:uint = 3;

      public static const pokuko:uint = 4;

      public static const tikofut:uint = 5;

      public static const wujeto:uint = 6;

      public static const wero:uint = 7;

      public static const humuru:uint = 8;

      public static const bewa:uint = 9;

      public static const nokicitoj:uint = 10;

      public static const kimejek:uint = 11;

      public static const jeke:uint = 12;

      public static const den:uint = 13;

      public static const laki:uint = 14;

      public static const sikucahid:uint = 15;

      public static const cyl:uint = 16;

      public static const hejeb:uint = 17;

      public static const cyjewa:uint = 18;

      public static const nirur:uint = 19;

      public static const kew:uint = 20;

      public static const juta:uint = 21;

      public static const dakazev:uint = 22;

      public static const vybamaje:uint = 23;

      public static const qumeq:uint = 24;

      public static const jucacyjaj:uint = 25;

      public static const volyw:uint = 26;

      public static const zuf:uint = 27;

      public static const zon:uint = 28;

      public static const pup:uint = 29;

      public static const cajowo:uint = 1<<husu-1;

      public static const miryb:uint = 1<<dele-1;

      public static const haruvod:uint = 1<<pusosu-1;

      public static const guc:uint = 1<<pokuko-1;

      public static const wed:uint = 1<<tikofut-1;

      public static const bidufiva:uint = 1<<wujeto-1;

      public static const kaquqeb:uint = 1<<wero-1;

      public static const mutuvyb:uint = 1<<humuru-1;

      public static const zuwuqo:uint = 1<<bewa-1;

      public static const wiq:uint = 1<<nokicitoj-1;

      public static const paguvohy:uint = 1<<kimejek-1;

      public static const lafuluf:uint = 1<<jeke-1;

      public static const bazalidos:uint = 1<<den-1;

      public static const fofaruqi:uint = 1<<laki-1;

      public static const lebofyhy:uint = 1<<sikucahid-1;

      public static const maq:uint = 1<<cyl-1;

      public static const hezuz:uint = 1<<hejeb-1;

      public static const kohiwet:uint = 1<<cyjewa-1;

      public static const zobujuq:uint = 1<<nirur-1;

      public static const fuwuby:uint = 1<<kew-1;

      public static const futupuw:uint = 1<<juta-1;

      public static const cumyku:uint = 1<<dakazev-1;

      public static const ceqoko:uint = 1<<vybamaje-1;

      public static const socyv:uint = 1<<qumeq-1;

      public static const hiciwe:uint = 1<<jucacyjaj-1;

      public static const fev:uint = 1<<volyw-1;

      public static const vyrugi:uint = 1<<zuf-1;

      public static const hehunabe:uint = 1<<zon-1;

      public static const sinos:uint = 1<<pup-1;

      public static const resydowu:uint = wiq|mutuvyb|futupuw;

      public static var effects_:Vector.<ConditionEffect> = new Vector.<ConditionEffect>(30);

      private static var qujidicyf:Object = null;

      public static function tikurokyr(param1:String) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:uint = 0;
         if(qujidicyf==null)
         {
            qujidicyf=new Object();
            _loc2_=0;
            while(_loc2_<effects_.length)
            {
               qujidicyf[effects_[_loc2_].name_]=_loc2_;
               _loc2_++;
            }
         }
         return qujidicyf[param1];
      }

      public static function buby(param1:String) : ConditionEffect {
         var _loc5_:* = false;
         var _loc6_:* = true;
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

      public static function sypywyhuh(param1:uint, param2:Vector.<BitmapData>, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<BitmapData> = null;
         while(param1!=0)
         {
            _loc4_=param1&param1-1;
            _loc5_=param1^_loc4_;
            _loc6_=keduqisod(_loc5_);
            if(_loc6_!=null)
            {
               param2.push(_loc6_[param3%_loc6_.length]);
            }
            param1=_loc4_;
         }
         return;
      }

      private static var rymo:Object = null;

      private static const GLOW_FILTER:GlowFilter = new GlowFilter(0,0.3,6,6,2,BitmapFilterQuality.LOW,false,false);

      private static function keduqisod(param1:uint) : Vector.<BitmapData> {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Matrix = null;
         var _loc3_:uint = 0;
         var _loc4_:Vector.<BitmapData> = null;
         var _loc5_:* = 0;
         var _loc6_:BitmapData = null;
         if(rymo==null)
         {
            rymo=new Object();
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
                     _loc6_.draw(AssetLibrary.tem("lofiInterface2",effects_[_loc3_].iconOffsets_[_loc5_]),_loc2_);
                     _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,4.294967295E9);
                     _loc6_.applyFilter(_loc6_,_loc6_.rect,PointUtil.wota,GLOW_FILTER);
                     _loc4_.push(_loc6_);
                     _loc5_++;
                  }
               }
               rymo[effects_[_loc3_].bit_]=_loc4_;
               _loc3_++;
            }
         }
         return rymo[param1];
      }

      public var name_:String;

      public var bit_:uint;

      public var iconOffsets_:Array;

      public var damalycyw:String;
   }

}