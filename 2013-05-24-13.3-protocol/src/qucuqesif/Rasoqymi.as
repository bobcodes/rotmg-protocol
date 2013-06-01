package qucuqesif
{
   import coh.Biba;
   import coh.Negu;
   import coh.Guwyza;
   import coh.PetAbilityMeter;
   import __AS3__.vec.Vector;
   import movimet.Lufub;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import coh.PetFeeder;
   import coh.PetFuser;
   import coh.Duhi;
   import hif.Rorody;
   import hif.Qynaj;
   import flash.display.Shape;
   import coh.Riqi;
   import com.company.assembleegameclient.ui.Luvu;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import coh.FusionStrength;


   public class Rasoqymi extends Object
   {
      public function Rasoqymi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function nyrojan(param1:uint, param2:uint) : Biba {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Biba = new Biba();
         _loc3_.draw(param1,param2);
         _loc3_.kapyly(Biba.HORIZONTAL_DIVISION,Qemo.rymyhu);
         _loc3_.kapyly(Biba.HORIZONTAL_DIVISION,Qemo.pige);
         return _loc3_;
      }

      public static function jajagu() : Biba {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Biba = new Biba();
         _loc1_.draw(Qemo.rufub,Qemo.datotuga);
         _loc1_.kapyly(Biba.HORIZONTAL_DIVISION,Qemo.rymyhu);
         _loc1_.kapyly(Biba.HORIZONTAL_DIVISION,Qemo.bawajocuf);
         return _loc1_;
      }

      public static function qerudug(param1:String, param2:uint) : Negu {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Negu = new Negu();
         _loc3_.y=param2;
         _loc3_.setPrefix(param1);
         return _loc3_;
      }

      public static function zyfizotyb() : Guwyza {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guwyza = null;
         _loc1_=new Guwyza();
         _loc1_.y=Qemo.jafosig-35;
         return _loc1_;
      }

      private static function rik() : PetAbilityMeter {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:PetAbilityMeter = null;
         _loc1_=new PetAbilityMeter();
         _loc1_.y=Qemo.rybo;
         return _loc1_;
      }

      public static function ryjy() : Vector.<PetAbilityMeter> {
         return Vector.<PetAbilityMeter>([rik(),rik(),rik()]);
      }

      public static function nury() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub();
         _loc1_.setStringBuilder(new Sire().setParams(I18nKeys.kimadef));
         _loc1_.setTextWidth(Qemo.rufub-20).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setSize(Qemo.tenotina).setColor(11776947);
         _loc1_.y=42;
         return _loc1_;
      }

      public static function vames() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub();
         _loc1_.setSize(Qemo.tenotina).setColor(11776947).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(100);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.y=Qemo.qoryvi;
         return _loc1_;
      }

      public static function ceriw(param1:uint, param2:uint) : Lufub {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Lufub = new Lufub();
         _loc3_.setSize(Qemo.tenotina).setColor(param1).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(param2);
         return _loc3_;
      }

      public static function qoqyqag() : PetFeeder {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:PetFeeder = new PetFeeder();
         _loc1_.y=Qemo.nadatihe;
         return _loc1_;
      }

      public static function bawuvoda() : PetFuser {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:PetFuser = new PetFuser();
         _loc1_.y=Qemo.nadatihe+50;
         return _loc1_;
      }

      public static function cyce() : Duhi {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Duhi = null;
         _loc1_=new Duhi();
         _loc1_.x=Qemo.peruhijy;
         _loc1_.y=Qemo.rum;
         return _loc1_;
      }

      public static function sulerahe() : Rorody {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Rorody = new Rorody();
         _loc1_.x=Qemo.peruhijy+35;
         _loc1_.jurubiq(true);
         return _loc1_;
      }

      public static function geqov() : Qynaj {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Qynaj = new Qynaj();
         _loc1_.x=Qemo.peruhijy+35;
         _loc1_.jurubiq(true);
         _loc1_.nacesoceq=true;
         return _loc1_;
      }

      public static function paleqivy(param1:uint, param2:uint, param3:uint, param4:Boolean, param5:Boolean) : Shape {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:Shape = null;
         _loc6_=new Shape();
         _loc6_.graphics.drawRoundRect(0,param3,param1,param1,16,16);
         _loc6_.x=(100-param1)*0.5;
         return _loc6_;
      }

      public static function veruno(param1:int) : Riqi {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Riqi = new Riqi();
         _loc2_.y=4;
         _loc2_.x=param1-_loc2_.width-5;
         return _loc2_;
      }

      public static function comat() : Luvu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Luvu = null;
         _loc1_=new Luvu(173,0);
         _loc1_.x=5;
         _loc1_.y=64;
         return _loc1_;
      }

      public static function vugyto(param1:uint, param2:uint=80) : Bitmap {
         return new Bitmap(ObjectLibrary.getRedrawnTextureFromType(param1,param2,true));
      }

      public static function rawyveb() : Bitmap {
         return vubomesav(6466);
      }

      public static function ricu(param1:uint) : Bitmap {
         return new Bitmap(ObjectLibrary.getRedrawnTextureFromType(param1,80,true));
      }

      private static function vubomesav(param1:uint) : Bitmap {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Bitmap = new Bitmap();
         var _loc3_:XML = ObjectLibrary.tem[param1];
         var _loc4_:* = 5;
         if(_loc3_.hasOwnProperty("ScaleValue"))
         {
            _loc4_=_loc3_.ScaleValue;
         }
         var _loc5_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(param1,80,true,true,_loc4_);
         _loc5_=BitmapUtil.wygoci(_loc5_,4,4,_loc5_.width-8,_loc5_.height-8);
         _loc2_=new Bitmap(_loc5_);
         return _loc2_;
      }

      public static function hahavap() : FusionStrength {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:FusionStrength = new FusionStrength();
         _loc1_.y=Qemo.vekok;
         _loc1_.x=(Qemo.rufub-_loc1_.width)*0.5;
         return _loc1_;
      }

      public static function riguwyn(param1:int, param2:int, param3:Boolean, param4:Boolean=false) : Lufub {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Lufub = new Lufub();
         _loc5_.setSize(param2).setColor(param1).setBold(param3);
         _loc5_.filters=param4?[new DropShadowFilter(0,0,0)]:[];
         return _loc5_;
      }

      public static function tefyko(param1:int, param2:int, param3:Boolean, param4:Boolean=false) : Lufub {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Lufub = new Lufub();
         _loc5_.setSize(param2).setColor(param1).setBold(param3);
         _loc5_.setVerticalAlign(Lufub.BOTTOM);
         _loc5_.filters=param4?[new DropShadowFilter(0,0,0)]:[];
         return _loc5_;
      }

      public static function juzi(param1:uint, param2:uint) : Biba {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Biba = new Biba();
         _loc3_.draw(param1,param2);
         _loc3_.kapyly(Biba.HORIZONTAL_DIVISION,30);
         _loc3_.kapyly(Biba.HORIZONTAL_DIVISION,212);
         _loc3_.kapyly(Biba.HORIZONTAL_DIVISION,349);
         return _loc3_;
      }

      public static function repanoqu(param1:uint, param2:uint) : Biba {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Biba = new Biba();
         _loc3_.draw(param1,param2);
         _loc3_.kapyly(Biba.HORIZONTAL_DIVISION,30);
         _loc3_.kapyly(Biba.HORIZONTAL_DIVISION,206);
         return _loc3_;
      }
   }

}