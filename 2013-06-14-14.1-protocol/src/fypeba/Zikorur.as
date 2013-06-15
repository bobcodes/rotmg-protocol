package fypeba
{
   import haj.Res;
   import haj.Ruvogomy;
   import haj.Tafulafij;
   import haj.PetAbilityMeter;
   import __AS3__.vec.Vector;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import haj.PetFeeder;
   import haj.PetFuser;
   import haj.Guqy;
   import kyjunys.Qajul;
   import kyjunys.Jebut;
   import flash.display.Shape;
   import haj.Hiquhifu;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import haj.FusionStrength;


   public class Zikorur extends Object
   {
      public function Zikorur() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function tajojody(param1:uint, param2:uint) : Res {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Res = new Res();
         _loc3_.draw(param1,param2);
         _loc3_.jypihu(Res.HORIZONTAL_DIVISION,Rikuko.hafoz);
         _loc3_.jypihu(Res.HORIZONTAL_DIVISION,Rikuko.vorirur);
         return _loc3_;
      }

      public static function rycivo() : Res {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Res = new Res();
         _loc1_.draw(Rikuko.vyh,Rikuko.zymezadoq);
         _loc1_.jypihu(Res.HORIZONTAL_DIVISION,Rikuko.hafoz);
         _loc1_.jypihu(Res.HORIZONTAL_DIVISION,Rikuko.nenudeli);
         return _loc1_;
      }

      public static function junat(param1:String, param2:uint) : Ruvogomy {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Ruvogomy = new Ruvogomy();
         _loc3_.y=param2;
         _loc3_.setPrefix(param1);
         return _loc3_;
      }

      public static function zyfego() : Tafulafij {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tafulafij = null;
         _loc1_=new Tafulafij();
         _loc1_.y=Rikuko.lamivy-35;
         return _loc1_;
      }

      private static function byvozev() : PetAbilityMeter {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:PetAbilityMeter = null;
         _loc1_=new PetAbilityMeter();
         _loc1_.y=Rikuko.futup;
         return _loc1_;
      }

      public static function napidyg() : Vector.<PetAbilityMeter> {
         return Vector.<PetAbilityMeter>([byvozev(),byvozev(),byvozev()]);
      }

      public static function qewazupe() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = new Guzowoja();
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.sazo));
         _loc1_.setTextWidth(Rikuko.vyh-20).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setSize(Rikuko.wowakehy).setColor(11776947);
         _loc1_.y=42;
         return _loc1_;
      }

      public static function hafigozyc() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja();
         _loc1_.setSize(Rikuko.wowakehy).setColor(11776947).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(100);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.y=Rikuko.vonidy;
         return _loc1_;
      }

      public static function rov(param1:uint, param2:uint) : Guzowoja {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Guzowoja = new Guzowoja();
         _loc3_.setSize(Rikuko.wowakehy).setColor(param1).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(param2);
         return _loc3_;
      }

      public static function budehez() : PetFeeder {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:PetFeeder = new PetFeeder();
         _loc1_.y=Rikuko.kogi;
         return _loc1_;
      }

      public static function tyjebar() : PetFuser {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:PetFuser = new PetFuser();
         _loc1_.y=Rikuko.kogi+50;
         return _loc1_;
      }

      public static function qipub() : Guqy {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guqy = null;
         _loc1_=new Guqy();
         _loc1_.x=Rikuko.lemat;
         _loc1_.y=Rikuko.gel;
         return _loc1_;
      }

      public static function dyluwac() : Qajul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Qajul = new Qajul();
         _loc1_.x=Rikuko.lemat+35;
         _loc1_.qaz(true);
         return _loc1_;
      }

      public static function cimo() : Jebut {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Jebut = new Jebut();
         _loc1_.x=Rikuko.lemat+35;
         _loc1_.qaz(true);
         _loc1_.nihyc=true;
         return _loc1_;
      }

      public static function kun(param1:uint, param2:uint, param3:uint, param4:Boolean, param5:Boolean) : Shape {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:Shape = null;
         _loc6_=new Shape();
         _loc6_.graphics.drawRoundRect(0,param3,param1,param1,16,16);
         _loc6_.x=(100-param1)*0.5;
         return _loc6_;
      }

      public static function totaca(param1:int) : Hiquhifu {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Hiquhifu = new Hiquhifu();
         _loc2_.y=4;
         _loc2_.x=param1-_loc2_.width-5;
         return _loc2_;
      }

      public static function wewal() : Gymajyzu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Gymajyzu = null;
         _loc1_=new Gymajyzu(173,0);
         _loc1_.x=5;
         _loc1_.y=64;
         return _loc1_;
      }

      public static function woz(param1:uint, param2:uint=80) : Bitmap {
         return new Bitmap(ObjectLibrary.getRedrawnTextureFromType(param1,param2,true));
      }

      public static function biwyl() : Bitmap {
         return pymipasu(6466);
      }

      public static function qyteketud(param1:uint) : Bitmap {
         return new Bitmap(ObjectLibrary.getRedrawnTextureFromType(param1,80,true));
      }

      private static function pymipasu(param1:uint) : Bitmap {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Bitmap = new Bitmap();
         var _loc3_:XML = ObjectLibrary.ziq[param1];
         var _loc4_:* = 5;
         if(_loc3_.hasOwnProperty("ScaleValue"))
         {
            _loc4_=_loc3_.ScaleValue;
         }
         var _loc5_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(param1,80,true,true,_loc4_);
         _loc5_=BitmapUtil.kodopomid(_loc5_,4,4,_loc5_.width-8,_loc5_.height-8);
         _loc2_=new Bitmap(_loc5_);
         return _loc2_;
      }

      public static function cese() : FusionStrength {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:FusionStrength = new FusionStrength();
         _loc1_.y=Rikuko.visojeta;
         _loc1_.x=(Rikuko.vyh-_loc1_.width)*0.5;
         return _loc1_;
      }

      public static function kapybyhy(param1:int, param2:int, param3:Boolean, param4:Boolean=false) : Guzowoja {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Guzowoja = new Guzowoja();
         _loc5_.setSize(param2).setColor(param1).setBold(param3);
         _loc5_.filters=param4?[new DropShadowFilter(0,0,0)]:[];
         return _loc5_;
      }

      public static function guta(param1:int, param2:int, param3:Boolean, param4:Boolean=false) : Guzowoja {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Guzowoja = new Guzowoja();
         _loc5_.setSize(param2).setColor(param1).setBold(param3);
         _loc5_.setVerticalAlign(Guzowoja.BOTTOM);
         _loc5_.filters=param4?[new DropShadowFilter(0,0,0)]:[];
         return _loc5_;
      }

      public static function wepe(param1:uint, param2:uint) : Res {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Res = new Res();
         _loc3_.draw(param1,param2);
         _loc3_.jypihu(Res.HORIZONTAL_DIVISION,30);
         _loc3_.jypihu(Res.HORIZONTAL_DIVISION,212);
         _loc3_.jypihu(Res.HORIZONTAL_DIVISION,349);
         return _loc3_;
      }

      public static function tewim(param1:uint, param2:uint) : Res {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Res = new Res();
         _loc3_.draw(param1,param2);
         _loc3_.jypihu(Res.HORIZONTAL_DIVISION,30);
         _loc3_.jypihu(Res.HORIZONTAL_DIVISION,206);
         return _loc3_;
      }
   }

}