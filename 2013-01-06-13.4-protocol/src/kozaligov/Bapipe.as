package kozaligov
{
[CLASS240]   import fyvanod.Pyni;
   import fyvanod.Kywyb;
   import fyvanod.Fimyr;
   import fyvanod.PetAbilityMeter;
   import __AS3__.vec.Vector;
   import pudev.Capitu;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import fyvanod.PetFeeder;
   import fyvanod.PetFuser;
   import fyvanod.Sosoqew;
   import jego.Ludiporos;
   import jego.Jilacodor;
   import flash.display.Shape;
   import fyvanod.Jasuhoco;
   import com.company.assembleegameclient.ui.Detys;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import fyvanod.FusionStrength;


   public class Bapipe extends Object
   {
      public function Bapipe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function vamy(param1:uint, param2:uint) : Pyni {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Pyni = new Pyni();
         _loc3_.draw(param1,param2);
         _loc3_.gowureqiv(Pyni.HORIZONTAL_DIVISION,Cinijyt.cocekija);
         _loc3_.gowureqiv(Pyni.HORIZONTAL_DIVISION,Cinijyt.juj);
         return _loc3_;
      }

      public static function canosyboz() : Pyni {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyni = new Pyni();
         _loc1_.draw(Cinijyt.lihunohoc,Cinijyt.kile);
         _loc1_.gowureqiv(Pyni.HORIZONTAL_DIVISION,Cinijyt.cocekija);
         _loc1_.gowureqiv(Pyni.HORIZONTAL_DIVISION,Cinijyt.viberem);
         return _loc1_;
      }

      public static function daq(param1:String, param2:uint) : Kywyb {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Kywyb = new Kywyb();
         _loc3_.y=param2;
         _loc3_.setPrefix(param1);
         return _loc3_;
      }

      public static function pimez() : Fimyr {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Fimyr = null;
         _loc1_=new Fimyr();
         _loc1_.y=Cinijyt.buhyq-35;
         return _loc1_;
      }

      private static function muraqane() : PetAbilityMeter {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:PetAbilityMeter = null;
         _loc1_=new PetAbilityMeter();
         _loc1_.y=Cinijyt.hejer;
         return _loc1_;
      }

      public static function wenotas() : Vector.<PetAbilityMeter> {
         return Vector.<PetAbilityMeter>([muraqane(),muraqane(),muraqane()]);
      }

      public static function midar() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu();
         _loc1_.setStringBuilder(new Zufi().setParams(Kefyfa.qyhal));
         _loc1_.setTextWidth(Cinijyt.lihunohoc-20).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setSize(Cinijyt.pacogen).setColor(11776947);
         _loc1_.y=42;
         return _loc1_;
      }

      public static function horymal() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu();
         _loc1_.setSize(Cinijyt.pacogen).setColor(11776947).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(100);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.y=Cinijyt.fowekuku;
         return _loc1_;
      }

      public static function kosat(param1:uint, param2:uint) : Capitu {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Capitu = new Capitu();
         _loc3_.setSize(Cinijyt.pacogen).setColor(param1).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(param2);
         return _loc3_;
      }

      public static function pilak() : PetFeeder {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:PetFeeder = new PetFeeder();
         _loc1_.y=Cinijyt.hysijefi;
         return _loc1_;
      }

      public static function hoquwe() : PetFuser {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:PetFuser = new PetFuser();
         _loc1_.y=Cinijyt.hysijefi+50;
         return _loc1_;
      }

      public static function sehiri() : Sosoqew {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sosoqew = null;
         _loc1_=new Sosoqew();
         _loc1_.x=Cinijyt.warise;
         _loc1_.y=Cinijyt.mupaco;
         return _loc1_;
      }

      public static function wocob() : Ludiporos {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Ludiporos = new Ludiporos();
         _loc1_.x=Cinijyt.warise+35;
         _loc1_.kywi(true);
         return _loc1_;
      }

      public static function relylad() : Jilacodor {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Jilacodor = new Jilacodor();
         _loc1_.x=Cinijyt.warise+35;
         _loc1_.kywi(true);
         _loc1_.muranotu=true;
         return _loc1_;
      }

      public static function luryr(param1:uint, param2:uint, param3:uint, param4:Boolean, param5:Boolean) : Shape {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:Shape = null;
         _loc6_=new Shape();
         _loc6_.graphics.drawRoundRect(0,param3,param1,param1,16,16);
         _loc6_.x=(100-param1)*0.5;
         return _loc6_;
      }

      public static function dupypy(param1:int) : Jasuhoco {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Jasuhoco = new Jasuhoco();
         _loc2_.y=4;
         _loc2_.x=param1-_loc2_.width-5;
         return _loc2_;
      }

      public static function wawe() : Detys {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Detys = null;
         _loc1_=new Detys(173,0);
         _loc1_.x=5;
         _loc1_.y=64;
         return _loc1_;
      }

      public static function lumylajyp(param1:uint, param2:uint=80) : Bitmap {
         return new Bitmap(ObjectLibrary.getRedrawnTextureFromType(param1,param2,true));
      }

      public static function qilohof() : Bitmap {
         return wudugy(6466);
      }

      public static function wuzuryta(param1:uint) : Bitmap {
         return new Bitmap(ObjectLibrary.getRedrawnTextureFromType(param1,80,true));
      }

      private static function wudugy(param1:uint) : Bitmap {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Bitmap = new Bitmap();
         var _loc3_:XML = ObjectLibrary.zedij[param1];
         var _loc4_:* = 5;
         if(_loc3_.hasOwnProperty("ScaleValue"))
         {
            _loc4_=_loc3_.ScaleValue;
         }
         var _loc5_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(param1,80,true,true,_loc4_);
         _loc5_=BitmapUtil.wukofy(_loc5_,4,4,_loc5_.width-8,_loc5_.height-8);
         _loc2_=new Bitmap(_loc5_);
         return _loc2_;
      }

      public static function carawup() : FusionStrength {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:FusionStrength = new FusionStrength();
         _loc1_.y=Cinijyt.byfyda;
         _loc1_.x=(Cinijyt.lihunohoc-_loc1_.width)*0.5;
         return _loc1_;
      }

      public static function nopu(param1:int, param2:int, param3:Boolean, param4:Boolean=false) : Capitu {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Capitu = new Capitu();
         _loc5_.setSize(param2).setColor(param1).setBold(param3);
         _loc5_.filters=param4?[new DropShadowFilter(0,0,0)]:[];
         return _loc5_;
      }

      public static function kejajaqyv(param1:int, param2:int, param3:Boolean, param4:Boolean=false) : Capitu {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Capitu = new Capitu();
         _loc5_.setSize(param2).setColor(param1).setBold(param3);
         _loc5_.setVerticalAlign(Capitu.BOTTOM);
         _loc5_.filters=param4?[new DropShadowFilter(0,0,0)]:[];
         return _loc5_;
      }

      public static function dejyjoro(param1:uint, param2:uint) : Pyni {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Pyni = new Pyni();
         _loc3_.draw(param1,param2);
         _loc3_.gowureqiv(Pyni.HORIZONTAL_DIVISION,30);
         _loc3_.gowureqiv(Pyni.HORIZONTAL_DIVISION,212);
         _loc3_.gowureqiv(Pyni.HORIZONTAL_DIVISION,349);
         return _loc3_;
      }

      public static function walob(param1:uint, param2:uint) : Pyni {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Pyni = new Pyni();
         _loc3_.draw(param1,param2);
         _loc3_.gowureqiv(Pyni.HORIZONTAL_DIVISION,30);
         _loc3_.gowureqiv(Pyni.HORIZONTAL_DIVISION,206);
         return _loc3_;
      }
   }
[/CLASS]
}