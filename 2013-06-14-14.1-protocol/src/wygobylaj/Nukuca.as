package wygobylaj
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import hivysif.Guzowoja;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import kabam.rotmg.assets.model.Animation;
   import flash.text.TextFieldAutoSize;
   import flash.events.TimerEvent;
   import jediwip.Kybidu;
   import buryq.GTween;
   import flash.events.Event;


   public class Nukuca extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nukuca() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.lyqive();
         this.cipihaho();
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const sevemi:Number = 1000;

      public static const takyj:int = 5;

      public static const cynureda:Number = 0.4;

      private var screen:DisplayObjectContainer;

      private var fyhyryza:Guzowoja;

      private var zugipegon:Vector.<DisplayObject>;

      private var buc:MovieClip;

      private var vygynecub:Boolean;

      public const johi:Timer = new Timer(sevemi,1);

      private var qowataloq:String;

      private var hytyjodifa:int;

      private var kicuz:Animation;

      private var tuzec:Boolean;

      private function lyqive() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0);
         _loc1_.graphics.drawRect(0,0,800,600);
         _loc1_.graphics.endFill();
         addChild(_loc1_);
         return;
      }

      private function cipihaho() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.screen=new MapLoadingScreen();
         var _loc1_:MovieClip = this.screen.getChildByName("mapNameContainer") as MovieClip;
         this.fyhyryza=new Guzowoja().setSize(30).setColor(16777215);
         this.fyhyryza.setBold(true);
         this.fyhyryza.setAutoSize(TextFieldAutoSize.CENTER);
         this.fyhyryza.x=_loc1_.x;
         this.fyhyryza.y=_loc1_.y;
         this.screen.addChild(this.fyhyryza);
         this.buc=this.screen.getChildByName("difficulty_indicators") as MovieClip;
         this.zugipegon=new Vector.<DisplayObject>(takyj);
         var _loc2_:* = 1;
         while(_loc2_<=takyj)
         {
            this.zugipegon[_loc2_-1]=this.buc.getChildByName("indicator_"+_loc2_);
            _loc2_++;
         }
         addChild(this.screen);
         this.riri();
         return;
      }

      public function vyc(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qowataloq=param1?param1:"";
         this.hytyjodifa=param2;
         this.wudoqyra();
         this.riri();
         return;
      }

      private function wudoqyra() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.johi.addEventListener(TimerEvent.TIMER_COMPLETE,this.pojase);
         this.johi.start();
         return;
      }

      private function pojase(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.vygynecub)
         {
            this.turerucyc();
         }
         else
         {
            this.tuzec=true;
         }
         return;
      }

      private function riri() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(this.screen)
         {
            this.fyhyryza.setStringBuilder(new Kybidu().setParams(this.qowataloq));
            if(this.hytyjodifa<=0)
            {
               this.screen.getChildByName("bgGroup").visible=false;
               this.buc.visible=false;
            }
            else
            {
               this.screen.getChildByName("bgGroup").visible=true;
               this.buc.visible=true;
               _loc1_=0;
               while(_loc1_<takyj)
               {
                  this.zugipegon[_loc1_].visible=_loc1_<this.hytyjodifa;
                  _loc1_++;
               }
            }
         }
         return;
      }

      public function rygykypo(param1:Animation) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kicuz=param1;
         addChild(param1);
         param1.start();
         param1.x=399.5-param1.width*0.5+5;
         param1.y=245.85-param1.height*0.5;
         return;
      }

      public function disable() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.tuzec)
         {
            this.turerucyc();
         }
         else
         {
            this.vygynecub=true;
         }
         return;
      }

      private function turerucyc() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:GTween = new GTween(this,cynureda,{alpha:0.0});
         _loc1_.onComplete=this.habula;
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      private function habula(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kicuz.dispose();
         return;
      }
   }

}