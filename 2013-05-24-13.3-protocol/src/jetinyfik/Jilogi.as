package jetinyfik
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import movimet.Lufub;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import kabam.rotmg.assets.model.Animation;
   import flash.text.TextFieldAutoSize;
   import flash.events.TimerEvent;
   import nec.Sire;
   import dilywopavy.GTween;
   import flash.events.Event;


   public class Jilogi extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jilogi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.bazijuram();
         this.fyjijemak();
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const bafu:Number = 1000;

      public static const lek:int = 5;

      public static const pulyvyzol:Number = 0.4;

      private var screen:DisplayObjectContainer;

      private var tyric:Lufub;

      private var webycok:Vector.<DisplayObject>;

      private var pipefyc:MovieClip;

      private var dymudo:Boolean;

      public const bajaribeg:Timer = new Timer(bafu,1);

      private var ratyhemol:String;

      private var linupesa:int;

      private var qahinynyb:Animation;

      private var heji:Boolean;

      private function bazijuram() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0);
         _loc1_.graphics.drawRect(0,0,800,600);
         _loc1_.graphics.endFill();
         addChild(_loc1_);
         return;
      }

      private function fyjijemak() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:MovieClip = null;
         this.screen=new MapLoadingScreen();
         _loc1_=this.screen.getChildByName("mapNameContainer") as MovieClip;
         this.tyric=new Lufub().setSize(30).setColor(16777215);
         this.tyric.setBold(true);
         this.tyric.setAutoSize(TextFieldAutoSize.CENTER);
         this.tyric.x=_loc1_.x;
         this.tyric.y=_loc1_.y;
         this.screen.addChild(this.tyric);
         this.pipefyc=this.screen.getChildByName("difficulty_indicators") as MovieClip;
         this.webycok=new Vector.<DisplayObject>(lek);
         var _loc2_:* = 1;
         while(_loc2_<=lek)
         {
            this.webycok[_loc2_-1]=this.pipefyc.getChildByName("indicator_"+_loc2_);
            _loc2_++;
         }
         addChild(this.screen);
         this.zyzina();
         return;
      }

      public function bupyj(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.ratyhemol=param1?param1:"";
         this.linupesa=param2;
         this.fem();
         this.zyzina();
         return;
      }

      private function fem() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bajaribeg.addEventListener(TimerEvent.TIMER_COMPLETE,this.jonuto);
         this.bajaribeg.start();
         return;
      }

      private function jonuto(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.dymudo)
         {
            this.qyvanov();
         }
         else
         {
            this.heji=true;
         }
         return;
      }

      private function zyzina() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         if(this.screen)
         {
            this.tyric.setStringBuilder(new Sire().setParams(this.ratyhemol));
            if(this.linupesa<=0)
            {
               this.screen.getChildByName("bgGroup").visible=false;
               this.pipefyc.visible=false;
            }
            else
            {
               this.screen.getChildByName("bgGroup").visible=true;
               this.pipefyc.visible=true;
               _loc1_=0;
               while(_loc1_<lek)
               {
                  this.webycok[_loc1_].visible=_loc1_<this.linupesa;
                  _loc1_++;
               }
            }
         }
         return;
      }

      public function begipo(param1:Animation) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qahinynyb=param1;
         addChild(param1);
         param1.start();
         param1.x=399.5-param1.width*0.5+5;
         param1.y=245.85-param1.height*0.5;
         return;
      }

      public function disable() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.heji)
         {
            this.qyvanov();
         }
         else
         {
            this.dymudo=true;
         }
         return;
      }

      private function qyvanov() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:GTween = new GTween(this,pulyvyzol,{alpha:0.0});
         _loc1_.onComplete=this.ledorow;
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      private function ledorow(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qahinynyb.dispose();
         return;
      }
   }

}