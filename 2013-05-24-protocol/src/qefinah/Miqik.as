package qefinah
{
   import flash.display.Sprite;
   import cuwyg.StatModel;
   import aaa.rotmg.i18n.I18nKeys;
   import __AS3__.vec.Vector;
   import gyzesuqu.Tybabukyr;
   import com.company.assembleegameclient.objects.Player;
   import flash.filters.GlowFilter;
   import flash.events.MouseEvent;


   public class Miqik extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Miqik() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.background=this.dolihaduj();
         this.zaf=new Vector.<Dyloq>();
         this.rovewapute=new Sprite();
         super();
         addChild(this.background);
         addChild(this.rovewapute);
         this.guwus();
         mouseChildren=false;
         this.wudufi=new Tybabukyr(this,MouseEvent.MOUSE_DOWN,MouseEvent);
         return;
      }

      private static const recija:Array = [new StatModel(I18nKeys.zacipipuf,I18nKeys.qof,I18nKeys.pubyjogeq,true),new StatModel(I18nKeys.bohydo,I18nKeys.dyqijazu,I18nKeys.neryturi,false),new StatModel(I18nKeys.qulowazy,I18nKeys.gif,I18nKeys.debyqiq,true),new StatModel(I18nKeys.gahenejyn,I18nKeys.lusude,I18nKeys.wukaq,true),new StatModel(I18nKeys.laraho,I18nKeys.dawiz,I18nKeys.tur,true),new StatModel(I18nKeys.lejykota,I18nKeys.bacydyhih,I18nKeys.vyvoqena,true)];

      public static const razyz:int = 0;

      public static const pedodijyr:int = 1;

      public static const fujocihu:int = 2;

      public static const remuzu:int = 3;

      public static const doroficin:int = 4;

      public static const dajemadit:int = 5;

      public static const cavabonyz:String = "state_undocked";

      public static const dyha:String = "state_docked";

      public static const socuboh:String = dyha;

      private const WIDTH:int = 191;

      private const HEIGHT:int = 45;

      private var background:Sprite;

      public var zaf:Vector.<Dyloq>;

      public var rovewapute:Sprite;

      public var wudufi:Tybabukyr;

      public var tycycim:String = "state_docked";

      private function guwus() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Dyloq = null;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<recija.length)
         {
            _loc3_=this.gilujupy(_loc2_,_loc1_);
            this.zaf.push(_loc3_);
            this.rovewapute.addChild(_loc3_);
            _loc1_=_loc1_+_loc2_%2;
            _loc2_++;
         }
         return;
      }

      private function gilujupy(param1:int, param2:int) : Dyloq {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:StatModel = recija[param1];
         var _loc4_:Dyloq = new Dyloq(_loc3_.name,_loc3_.pobiniher,_loc3_.description,_loc3_.lagybufip);
         _loc4_.x=param1%2*this.WIDTH/2;
         _loc4_.y=param2*this.HEIGHT/3;
         return _loc4_;
      }

      public function draw(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.qojudukywy();
            this.cegewon(param1);
         }
         this.rovewapute.x=(this.WIDTH-this.rovewapute.width)/2;
         return;
      }

      private function cegewon(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zaf[razyz].draw(param1.vybe,param1.rocojoje,param1.bapinu);
         this.zaf[pedodijyr].draw(param1.giwiw,param1.pyfufogi,param1.lug);
         this.zaf[fujocihu].draw(param1.speed_,param1.putujyr,param1.zeqorag);
         this.zaf[remuzu].draw(param1.zegikefa,param1.vomedo,param1.pewydil);
         this.zaf[doroficin].draw(param1.vykun,param1.riniqy,param1.zyfituz);
         this.zaf[dajemadit].draw(param1.pazawo,param1.sofehu,param1.qukok);
         return;
      }

      public function gajuwyqi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tycycim=dyha;
         return;
      }

      public function weqyjulov() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tycycim=cavabonyz;
         return;
      }

      private function dolihaduj() : Sprite {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=new Sprite();
         this.background.graphics.clear();
         this.background.graphics.beginFill(3552822);
         this.background.graphics.lineStyle(2,16777215);
         this.background.graphics.drawRoundRect(-5,-5,this.WIDTH+10,this.HEIGHT+13,10);
         this.background.filters=[new GlowFilter(0,1,10,10,1,3)];
         return this.background;
      }

      private function qojudukywy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.tycycim==cavabonyz)
         {
            this.background.alpha=1;
         }
         else
         {
            if(this.tycycim==dyha)
            {
               this.background.alpha=0;
            }
         }
         return;
      }
   }

}