package ruwysepyd
{
   import flash.display.Sprite;
   import sakugyt.Tiqigawul;
   import movimet.Lufub;
   import vahejo.Muhado;
   import fom.Kyh;
   import tulunyno.Hugyqufyq;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import nec.Nara;
   import vahejo.Qykavu;
   import vahejo.Mafa;
   import sakugyt.Mecunenim;
   import com.company.assembleegameclient.ui.Nuzufiqo;


   public class TitleView extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function TitleView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zanoh=this.gewomu();
         this.hoqiju=new Hugyqufyq();
         super();
         addChild(new Qykavu());
         addChild(new Mafa());
         addChild(new sozozud());
         addChild(this.zanoh);
         addChild(new Mecunenim());
         this.mas();
         addChild(new Nuzufiqo());
         return;
      }

      static var sozozud:Class = Fesu;

      public static const vaha:Number = 589.45;

      public var gade:Tiqigawul;

      private var kegu:Lufub;

      private var jyw:Lufub;

      private var zanoh:Muhado;

      private var data:Kyh;

      public var gohikop:Hugyqufyq;

      public var mucihunuk:Hugyqufyq;

      public var keliqac:Hugyqufyq;

      public var zajudol:Hugyqufyq;

      public var myvovisy:Hugyqufyq;

      public var sylac:Hugyqufyq;

      public var gehysoz:Hugyqufyq;

      public var hoqiju:Hugyqufyq;

      private function gewomu() : Muhado {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:Tiqigawul = Vedoqawe.tisujyhav();
         var _loc2_:Tiqigawul = Vedoqawe.vabefifi();
         var _loc3_:Tiqigawul = Vedoqawe.hagi();
         var _loc4_:Tiqigawul = Vedoqawe.hywiz();
         this.gade=Vedoqawe.zibike();
         this.gohikop=_loc1_.siperu;
         this.mucihunuk=_loc2_.siperu;
         this.keliqac=_loc3_.siperu;
         this.zajudol=_loc4_.siperu;
         this.myvovisy=this.gade.siperu;
         var _loc5_:Muhado = new Muhado();
         _loc5_.ryquwocy(_loc1_,Muhado.CENTER);
         _loc5_.ryquwocy(_loc2_,Muhado.LEFT);
         _loc5_.ryquwocy(this.gade,Muhado.LEFT);
         _loc5_.ryquwocy(_loc3_,Muhado.RIGHT);
         _loc5_.ryquwocy(_loc4_,Muhado.RIGHT);
         return _loc5_;
      }

      private function mas() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kegu=this.makeText().setHTML(true).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(Lufub.MIDDLE);
         this.kegu.y=vaha;
         addChild(this.kegu);
         this.jyw=this.makeText().setAutoSize(TextFieldAutoSize.RIGHT).setVerticalAlign(Lufub.MIDDLE);
         this.jyw.setStringBuilder(new Sire().setParams(I18nKeys.jaj));
         this.jyw.filters=[new DropShadowFilter(0,0,0)];
         this.jyw.x=800;
         this.jyw.y=vaha;
         addChild(this.jyw);
         return;
      }

      public function makeText() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub().setSize(12).setColor(8355711);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      public function initialize(param1:Kyh) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.data=param1;
         this.fetef();
         this.zydykek();
         return;
      }

      private function fetef() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kegu.setStringBuilder(new Nara(this.data.piwo));
         return;
      }

      private function zydykek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hoqiju.dispatch();
         return;
      }

      private function fodinif() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tiqigawul = Vedoqawe.fejuziwac();
         this.zanoh.ryquwocy(_loc1_,Muhado.RIGHT);
         this.gehysoz=_loc1_.siperu;
         return;
      }

      private function galih() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tiqigawul = Vedoqawe.jukypecim();
         this.zanoh.ryquwocy(_loc1_,Muhado.RIGHT);
         this.sylac=_loc1_.siperu;
         return;
      }

      public function duhupibeg(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.gade.activate();
         }
         else
         {
            this.gade.deactivate();
         }
         return;
      }
   }

}