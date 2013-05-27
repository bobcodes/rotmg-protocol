package nico
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import qazoz.Doba;
   import kabam.rotmg.assets.model.Animation;
   import ruwysepyd.Junefolef;
   import nec.Sire;
   import nec.Nara;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import kabam.rotmg.assets.services.Rogih;


   public class ClassDetailView extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ClassDetailView() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DropShadowFilter = null;
         super();
         this.jiguvovu.complete.add(this.layout);
         _loc1_=new DropShadowFilter(0,0,0,1,8,8);
         this.satybyla=new Sprite();
         this.satybyla.x=(WIDTH-104)*0.5;
         addChild(this.satybyla);
         this.classNameText=new Lufub().setSize(20).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(ten);
         this.classNameText.filters=[_loc1_];
         this.jiguvovu.push(this.classNameText.textChanged);
         addChild(this.classNameText);
         this.dihupoq=new Lufub().setSize(14).setColor(16777215).setTextWidth(ten).setWordWrap(true);
         this.dihupoq.filters=[_loc1_];
         this.jiguvovu.push(this.dihupoq.textChanged);
         addChild(this.dihupoq);
         this.rem=new Lufub().setSize(14).setColor(16777215).setBold(true);
         this.rem.filters=[_loc1_];
         this.rem.setStringBuilder(new Sire().setParams(I18nKeys.gegenydo));
         this.jiguvovu.push(this.rem.textChanged);
         addChild(this.rem);
         this.biri=new Lufub().setSize(14).setColor(16777215).setBold(true);
         this.biri.filters=[_loc1_];
         this.biri.setStringBuilder(new Sire().setParams(I18nKeys.hyjyvy));
         this.jiguvovu.push(this.biri.textChanged);
         addChild(this.biri);
         this.wefitob=new Lufub().setSize(16).setColor(16777215).setBold(true);
         this.wefitob.filters=[_loc1_];
         this.jiguvovu.push(this.wefitob.textChanged);
         addChild(this.wefitob);
         this.cicygy=new Lufub().setSize(14).setColor(16777215).setBold(true);
         this.cicygy.filters=[_loc1_];
         this.cicygy.setStringBuilder(new Sire().setParams(I18nKeys.quk));
         this.jiguvovu.push(this.cicygy.textChanged);
         addChild(this.cicygy);
         this.kudihem=new Lufub().setSize(16).setColor(15387756).setBold(true);
         this.kudihem.filters=[_loc1_];
         this.jiguvovu.push(this.kudihem.textChanged);
         addChild(this.kudihem);
         this.cyqosy=new Bitmap(Rogih.qilo());
         this.cyqosy.filters=[_loc1_];
         addChild(this.cyqosy);
         this.gaw=new Lufub().setSize(14).setColor(16777215).setBold(true);
         this.gaw.filters=[_loc1_];
         this.gaw.setStringBuilder(new Sire().setParams(I18nKeys.qenukal));
         this.gaw.visible=false;
         addChild(this.gaw);
         this.febe=new Lufub().setSize(14).setColor(16777215);
         this.febe.filters=[_loc1_];
         this.febe.visible=false;
         addChild(this.febe);
         this.qyw=new Doba();
         addChild(this.qyw);
         return;
      }

      private static const jov:int = 205;

      private static const WIDTH:int = 344;

      private static const ten:int = 188;

      private var classNameText:Lufub;

      private var dihupoq:Lufub;

      private var rem:Lufub;

      private var biri:Lufub;

      private var wefitob:Lufub;

      private var cicygy:Lufub;

      private var kudihem:Lufub;

      private var cyqosy:Bitmap;

      private var gaw:Lufub;

      private var febe:Lufub;

      private var qyw:Doba;

      private var kymupy:Boolean;

      private var satybyla:Sprite;

      private var qahinynyb:Animation;

      private const jiguvovu:Junefolef = new Junefolef();

      public function jaribosod(param1:String, param2:String, param3:int, param4:int, param5:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.classNameText.setStringBuilder(new Sire().setParams(param1));
         this.dihupoq.setStringBuilder(new Sire().setParams(param2));
         this.wefitob.setStringBuilder(new Nara(String(param4)));
         this.kudihem.setStringBuilder(new Nara(String(param5)));
         return;
      }

      public function movilal(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.kymupy=!(param2==-1);
         if(this.kymupy)
         {
            this.febe.setStringBuilder(new Sire().setParams(I18nKeys.bozuky,
               {
                  goal:String(param2),
                  quest:param1
               }
            ));
            this.febe.y=this.gaw.y+this.gaw.height;
            this.febe.x=WIDTH/2-this.febe.width/2;
            this.jiguvovu.push(this.febe.textChanged);
            this.jiguvovu.push(this.gaw.textChanged);
         }
         return;
      }

      public function resoji(param1:Animation) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qahinynyb=param1;
         this.layout();
         return;
      }

      private function qiqanuve(param1:Animation) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stop();
         this.satybyla.removeChild(param1);
         return;
      }

      private function pitaw(param1:Animation) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.satybyla.addChild(param1);
         param1.start();
         return;
      }

      private function layout() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.classNameText.x=WIDTH/2-this.classNameText.width/2;
         this.classNameText.y=110;
         this.dihupoq.y=this.classNameText.y+this.classNameText.height+5;
         this.dihupoq.x=WIDTH/2-this.dihupoq.width/2;
         this.rem.y=this.dihupoq.y+this.dihupoq.height+20;
         this.rem.x=jov-this.rem.width;
         this.qyw.y=this.rem.y-2;
         this.qyw.x=jov+18;
         this.biri.y=this.rem.y+this.rem.height+5;
         this.biri.x=jov-this.biri.width;
         this.wefitob.y=this.biri.y;
         this.wefitob.x=jov+18;
         this.cicygy.y=this.biri.y+this.biri.height+5;
         this.cicygy.x=jov-this.cicygy.width;
         this.kudihem.y=this.cicygy.y;
         this.kudihem.x=jov+18;
         this.cyqosy.y=this.cicygy.y-2;
         this.cyqosy.x=this.kudihem.x+this.kudihem.width+3;
         this.gaw.y=this.cicygy.y+this.cicygy.height+17;
         this.gaw.x=WIDTH/2-this.gaw.width/2;
         this.gaw.visible=this.kymupy;
         this.febe.y=this.gaw.y+this.gaw.height;
         this.febe.x=WIDTH/2-this.febe.width/2;
         this.febe.visible=this.kymupy;
         return;
      }
   }

}