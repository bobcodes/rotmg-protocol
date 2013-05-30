package sakugyt
{
   import flash.display.Sprite;
   import biqacufo.Kofapije;
   import tulunyno.Hugyqufyq;
   import hotewa.Baqifa;
   import tys.Fumityger;
   import flash.events.MouseEvent;
   import movimet.Lufub;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.appengine.Kewisesa;
   import com.company.googleanalytics.GA;
   import flash.events.Event;
   import vahejo.Tetywybil;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Cekocozah extends Sprite
   {
      public function Cekocozah() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qygut={};
         super();
         this.tooltip=new Hugyqufyq(Sprite);
         this.selected=new Hugyqufyq(int);
         this.close=new Hugyqufyq();
         this.buy=new Hugyqufyq(int);
         addChild(new Tetywybil());
         addChild(new Mecunenim());
         addChild(new ScreenGraphic());
         return;
      }

      private var tadilelis:Tiqigawul;

      private var zinavy:Kofapije;

      private var qygut:Object;

      public var tooltip:Hugyqufyq;

      public var close:Hugyqufyq;

      public var selected:Hugyqufyq;

      public var buy:Hugyqufyq;

      private var gazih:Boolean = false;

      public function initialize(param1:Baqifa) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:CharacterBox = null;
         if(this.gazih)
         {
            return;
         }
         this.gazih=true;
         this.tadilelis=new Tiqigawul(Fumityger.luc,36,false);
         this.tadilelis.addEventListener(MouseEvent.CLICK,this.zuhy);
         this.tadilelis.setVerticalAlign(Lufub.MIDDLE);
         addChild(this.tadilelis);
         this.zinavy=new Kofapije();
         this.zinavy.draw(param1.getCredits(),param1.cof());
         addChild(this.zinavy);
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.supy.length)
         {
            _loc3_=ObjectLibrary.supy[_loc2_];
            _loc4_=int(_loc3_.@type);
            _loc5_=_loc3_.@id;
            if(param1.kupakyjij(_loc5_,Kewisesa.wih))
            {
            }
            else
            {
               _loc6_=param1.kupakyjij(_loc5_,Kewisesa.pisomykir);
               _loc7_=new CharacterBox(_loc3_,param1.gudajaw()[_loc4_],param1,_loc6_);
               _loc7_.x=50+140*int(_loc2_%5)+70-_loc7_.width/2;
               _loc7_.y=88+140*int(_loc2_/5);
               this.qygut[_loc4_]=_loc7_;
               _loc7_.addEventListener(MouseEvent.ROLL_OVER,this.vucyje);
               _loc7_.addEventListener(MouseEvent.ROLL_OUT,this.laf);
               _loc7_.cucyzidy.add(this.sisova);
               _loc7_.haly.add(this.tejeg);
               if(_loc4_==784&&!_loc7_.wurev)
               {
                  _loc7_.mavuty(75);
               }
               addChild(_loc7_);
            }
            _loc2_++;
         }
         this.tadilelis.x=stage.stageWidth/2-this.tadilelis.width/2;
         this.tadilelis.y=550;
         this.zinavy.x=stage.stageWidth;
         this.zinavy.y=20;
         GA.global().trackPageview("/newCharScreen");
         return;
      }

      private function zuhy(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }

      private function vucyje(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:CharacterBox = param1.currentTarget as CharacterBox;
         _loc2_.gajyzucyl(true);
         this.tooltip.dispatch(_loc2_.getTooltip());
         return;
      }

      private function laf(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:CharacterBox = param1.currentTarget as CharacterBox;
         _loc2_.gajyzucyl(false);
         this.tooltip.dispatch(null);
         return;
      }

      private function sisova(param1:MouseEvent) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.tooltip.dispatch(null);
         var _loc2_:CharacterBox = param1.currentTarget.parent as CharacterBox;
         if(!_loc2_.wurev)
         {
            return;
         }
         var _loc3_:int = _loc2_.objectType();
         var _loc4_:String = ObjectLibrary.fajocyd[_loc3_];
         GA.global().trackEvent("character","create",_loc4_);
         this.selected.dispatch(_loc3_);
         return;
      }

      public function ciri(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zinavy.draw(param1,param2);
         return;
      }

      public function update(param1:Baqifa) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:CharacterBox = null;
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.supy.length)
         {
            _loc3_=ObjectLibrary.supy[_loc2_];
            _loc4_=int(_loc3_.@type);
            _loc5_=String(_loc3_.@id);
            if(param1.kupakyjij(_loc5_,Kewisesa.wih))
            {
            }
            else
            {
               _loc6_=param1.kupakyjij(_loc5_,Kewisesa.pisomykir);
               _loc7_=this.qygut[_loc4_];
               if(_loc7_)
               {
                  _loc7_.turevyli(true);
                  if((_loc6_)||(param1.komopiwyv(_loc4_)))
                  {
                     _loc7_.unlock();
                  }
               }
            }
            _loc2_++;
         }
         return;
      }

      private function tejeg(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         var _loc2_:CharacterBox = param1.currentTarget.parent as CharacterBox;
         if((_loc2_)&&!_loc2_.wurev)
         {
            _loc3_=int(_loc2_.playerXML_.@type);
            _loc2_.turevyli(false);
            this.buy.dispatch(_loc3_);
         }
         return;
      }
   }

}