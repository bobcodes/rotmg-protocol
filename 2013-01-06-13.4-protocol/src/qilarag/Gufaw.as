package qilarag
{
[CLASS438]   import flash.display.Sprite;
   import rucedosu.Vekowuris;
   import tinava.Dab;
   import dylaqezo.Vusun;
   import zohom.Syna;
   import flash.events.MouseEvent;
   import pudev.Capitu;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.appengine.Lelas;
   import com.company.googleanalytics.GA;
   import flash.events.Event;
   import rymuhuduh.Cyzan;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Gufaw extends Sprite
   {
      public function Gufaw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.waqosi={};
         super();
         this.tooltip=new Dab(Sprite);
         this.selected=new Dab(int);
         this.close=new Dab();
         this.buy=new Dab(int);
         addChild(new Cyzan());
         addChild(new Sinutuci());
         addChild(new ScreenGraphic());
         return;
      }

      private var qugonisic:Boqurot;

      private var leb:Vekowuris;

      private var waqosi:Object;

      public var tooltip:Dab;

      public var close:Dab;

      public var selected:Dab;

      public var buy:Dab;

      private var gor:Boolean = false;

      public function initialize(param1:Vusun) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:CharacterBox = null;
         if(this.gor)
         {
            return;
         }
         this.gor=true;
         this.qugonisic=new Boqurot(Syna.qyl,36,false);
         this.qugonisic.addEventListener(MouseEvent.CLICK,this.mehamegi);
         this.qugonisic.setVerticalAlign(Capitu.MIDDLE);
         addChild(this.qugonisic);
         this.leb=new Vekowuris();
         this.leb.draw(param1.gagesuno(),param1.juzuf());
         addChild(this.leb);
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.vyhytu.length)
         {
            _loc3_=ObjectLibrary.vyhytu[_loc2_];
            _loc4_=int(_loc3_.@type);
            _loc5_=_loc3_.@id;
            if(param1.giho(_loc5_,Lelas.kaqiruzyj))
            {
            }
            else
            {
               _loc6_=param1.giho(_loc5_,Lelas.luhej);
               _loc7_=new CharacterBox(_loc3_,param1.didodaduz()[_loc4_],param1,_loc6_);
               _loc7_.x=50+140*int(_loc2_%5)+70-_loc7_.width/2;
               _loc7_.y=88+140*int(_loc2_/5);
               this.waqosi[_loc4_]=_loc7_;
               _loc7_.addEventListener(MouseEvent.ROLL_OVER,this.hizyqyloh);
               _loc7_.addEventListener(MouseEvent.ROLL_OUT,this.qelogope);
               _loc7_.vily.add(this.qilopy);
               _loc7_.nosofad.add(this.lez);
               if(_loc4_==784&&!_loc7_.kowybuwu)
               {
                  _loc7_.tede(75);
               }
               addChild(_loc7_);
            }
            _loc2_++;
         }
         this.qugonisic.x=stage.stageWidth/2-this.qugonisic.width/2;
         this.qugonisic.y=550;
         this.leb.x=stage.stageWidth;
         this.leb.y=20;
         GA.global().trackPageview("/newCharScreen");
         return;
      }

      private function mehamegi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.close.dispatch();
         return;
      }

      private function hizyqyloh(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:CharacterBox = param1.currentTarget as CharacterBox;
         _loc2_.qokyfuza(true);
         this.tooltip.dispatch(_loc2_.getTooltip());
         return;
      }

      private function qelogope(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:CharacterBox = param1.currentTarget as CharacterBox;
         _loc2_.qokyfuza(false);
         this.tooltip.dispatch(null);
         return;
      }

      private function qilopy(param1:MouseEvent) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.tooltip.dispatch(null);
         var _loc2_:CharacterBox = param1.currentTarget.parent as CharacterBox;
         if(!_loc2_.kowybuwu)
         {
            return;
         }
         var _loc3_:int = _loc2_.objectType();
         var _loc4_:String = ObjectLibrary.mafiwape[_loc3_];
         GA.global().trackEvent("character","create",_loc4_);
         this.selected.dispatch(_loc3_);
         return;
      }

      public function fapyjybo(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.leb.draw(param1,param2);
         return;
      }

      public function update(param1:Vusun) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:CharacterBox = null;
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.vyhytu.length)
         {
            _loc3_=ObjectLibrary.vyhytu[_loc2_];
            _loc4_=int(_loc3_.@type);
            _loc5_=String(_loc3_.@id);
            if(param1.giho(_loc5_,Lelas.kaqiruzyj))
            {
            }
            else
            {
               _loc6_=param1.giho(_loc5_,Lelas.luhej);
               _loc7_=this.waqosi[_loc4_];
               if(_loc7_)
               {
                  _loc7_.zybow(true);
                  if((_loc6_)||(param1.mobacek(_loc4_)))
                  {
                     _loc7_.unlock();
                  }
               }
            }
            _loc2_++;
         }
         return;
      }

      private function lez(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc2_:CharacterBox = param1.currentTarget.parent as CharacterBox;
         if((_loc2_)&&!_loc2_.kowybuwu)
         {
            _loc3_=int(_loc2_.playerXML_.@type);
            _loc2_.zybow(false);
            this.buy.dispatch(_loc3_);
         }
         return;
      }
   }
[/CLASS]
}