package com.company.assembleegameclient.util
{
[CLASS1150]   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import com.company.util.AssetLibrary;
   import com.company.util.PointUtil;
   import haqakel.Kefyfa;
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
         this.hobosep=param4;
         return;
      }

      public static const nucy:uint = 0;

      public static const rojoq:uint = 1;

      public static const nic:uint = 2;

      public static const pugez:uint = 3;

      public static const reb:uint = 4;

      public static const verowylaf:uint = 5;

      public static const redopov:uint = 6;

      public static const qobynoj:uint = 7;

      public static const qaguke:uint = 8;

      public static const qolew:uint = 9;

      public static const vefygokyk:uint = 10;

      public static const zeqyga:uint = 11;

      public static const niry:uint = 12;

      public static const zilydo:uint = 13;

      public static const redebaty:uint = 14;

      public static const qehitat:uint = 15;

      public static const zisij:uint = 16;

      public static const bahiq:uint = 17;

      public static const dobyc:uint = 18;

      public static const desary:uint = 19;

      public static const bezemeh:uint = 20;

      public static const hejifymy:uint = 21;

      public static const lyjitipi:uint = 22;

      public static const laki:uint = 23;

      public static const zopeho:uint = 24;

      public static const godeqyg:uint = 25;

      public static const moresap:uint = 26;

      public static const cyfiqo:uint = 27;

      public static const kykevowev:uint = 28;

      public static const ler:uint = 29;

      public static const dukurilib:uint = 1<<rojoq-1;

      public static const syc:uint = 1<<nic-1;

      public static const qegowi:uint = 1<<pugez-1;

      public static const motajug:uint = 1<<reb-1;

      public static const pecapo:uint = 1<<verowylaf-1;

      public static const byduh:uint = 1<<redopov-1;

      public static const wim:uint = 1<<qobynoj-1;

      public static const vulyp:uint = 1<<qaguke-1;

      public static const zerycemu:uint = 1<<qolew-1;

      public static const binitide:uint = 1<<vefygokyk-1;

      public static const vivoves:uint = 1<<zeqyga-1;

      public static const cidoviwud:uint = 1<<niry-1;

      public static const piwyc:uint = 1<<zilydo-1;

      public static const jojafy:uint = 1<<redebaty-1;

      public static const vynagy:uint = 1<<qehitat-1;

      public static const luniku:uint = 1<<zisij-1;

      public static const bimaso:uint = 1<<bahiq-1;

      public static const vakofus:uint = 1<<dobyc-1;

      public static const ked:uint = 1<<desary-1;

      public static const maka:uint = 1<<bezemeh-1;

      public static const kuhelywa:uint = 1<<hejifymy-1;

      public static const fumav:uint = 1<<lyjitipi-1;

      public static const hysogowof:uint = 1<<laki-1;

      public static const hatowoz:uint = 1<<zopeho-1;

      public static const zoqeviz:uint = 1<<godeqyg-1;

      public static const korekaq:uint = 1<<moresap-1;

      public static const qoqusos:uint = 1<<cyfiqo-1;

      public static const hytu:uint = 1<<kykevowev-1;

      public static const hureka:uint = 1<<ler-1;

      public static const qafyjylak:uint = binitide|vulyp|kuhelywa;

      public static var effects_:Vector.<ConditionEffect> = new Vector.<ConditionEffect>(30);

      private static var hoguhij:Object = null;

      public static function vofataj(param1:String) : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:uint = 0;
         if(hoguhij==null)
         {
            hoguhij=new Object();
            _loc2_=0;
            while(_loc2_<effects_.length)
            {
               hoguhij[effects_[_loc2_].name_]=_loc2_;
               _loc2_++;
            }
         }
         return hoguhij[param1];
      }

      public static function koguti(param1:String) : ConditionEffect {
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

      public static function vyho(param1:uint, param2:Vector.<BitmapData>, param3:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<BitmapData> = null;
         while(param1!=0)
         {
            _loc4_=param1&param1-1;
            _loc5_=param1^_loc4_;
            _loc6_=fufagy(_loc5_);
            if(_loc6_!=null)
            {
               param2.push(_loc6_[param3%_loc6_.length]);
            }
            param1=_loc4_;
         }
         return;
      }

      private static var kawiv:Object = null;

      private static const GLOW_FILTER:GlowFilter = new GlowFilter(0,0.3,6,6,2,BitmapFilterQuality.LOW,false,false);

      private static function fufagy(param1:uint) : Vector.<BitmapData> {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:Matrix = null;
         var _loc3_:uint = 0;
         var _loc4_:Vector.<BitmapData> = null;
         var _loc5_:* = 0;
         var _loc6_:BitmapData = null;
         if(kawiv==null)
         {
            kawiv=new Object();
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
                     _loc6_.draw(AssetLibrary.zovy("lofiInterface2",effects_[_loc3_].iconOffsets_[_loc5_]),_loc2_);
                     _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,4.294967295E9);
                     _loc6_.applyFilter(_loc6_,_loc6_.rect,PointUtil.tirumyf,GLOW_FILTER);
                     _loc4_.push(_loc6_);
                     _loc5_++;
                  }
               }
               kawiv[effects_[_loc3_].bit_]=_loc4_;
               _loc3_++;
            }
         }
         return kawiv[param1];
      }

      public var name_:String;

      public var bit_:uint;

      public var iconOffsets_:Array;

      public var hobosep:String;
   }
[/CLASS]
}