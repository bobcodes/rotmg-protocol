package jewujiz
{
[CLASS234]   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import pudev.Capitu;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import kabam.rotmg.assets.model.Animation;
   import flash.text.TextFieldAutoSize;
   import flash.events.TimerEvent;
   import totuhare.Zufi;
   import barotuvy.GTween;
   import flash.events.Event;


   public class Zacul extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zacul() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.havabej();
         this.sypap();
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const sul:Number = 1000;

      public static const nehohequ:int = 5;

      public static const hokyqaf:Number = 0.4;

      private var screen:DisplayObjectContainer;

      private var cydor:Capitu;

      private var bycenykeh:Vector.<DisplayObject>;

      private var tijoqa:MovieClip;

      private var qanelo:Boolean;

      public const lare:Timer = new Timer(sul,1);

      private var ryruguhufi:String;

      private var job:int;

      private var wonira:Animation;

      private var mimo:Boolean;

      private function havabej() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0);
         _loc1_.graphics.drawRect(0,0,800,600);
         _loc1_.graphics.endFill();
         addChild(_loc1_);
         return;
      }

      private function sypap() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:MovieClip = null;
         this.screen=new MapLoadingScreen();
         _loc1_=this.screen.getChildByName("mapNameContainer") as MovieClip;
         this.cydor=new Capitu().setSize(30).setColor(16777215);
         this.cydor.setBold(true);
         this.cydor.setAutoSize(TextFieldAutoSize.CENTER);
         this.cydor.x=_loc1_.x;
         this.cydor.y=_loc1_.y;
         this.screen.addChild(this.cydor);
         this.tijoqa=this.screen.getChildByName("difficulty_indicators") as MovieClip;
         this.bycenykeh=new Vector.<DisplayObject>(nehohequ);
         var _loc2_:* = 1;
         while(_loc2_<=nehohequ)
         {
            this.bycenykeh[_loc2_-1]=this.tijoqa.getChildByName("indicator_"+_loc2_);
            _loc2_++;
         }
         addChild(this.screen);
         this.dered();
         return;
      }

      public function jiga(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.ryruguhufi=param1?param1:"";
         this.job=param2;
         this.kude();
         this.dered();
         return;
      }

      private function kude() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lare.addEventListener(TimerEvent.TIMER_COMPLETE,this.gutytyma);
         this.lare.start();
         return;
      }

      private function gutytyma(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qanelo)
         {
            this.barusewuq();
         }
         else
         {
            this.mimo=true;
         }
         return;
      }

      private function dered() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(this.screen)
         {
            this.cydor.setStringBuilder(new Zufi().setParams(this.ryruguhufi));
            if(this.job<=0)
            {
               this.screen.getChildByName("bgGroup").visible=false;
               this.tijoqa.visible=false;
            }
            else
            {
               this.screen.getChildByName("bgGroup").visible=true;
               this.tijoqa.visible=true;
               _loc1_=0;
               while(_loc1_<nehohequ)
               {
                  this.bycenykeh[_loc1_].visible=_loc1_<this.job;
                  _loc1_++;
               }
            }
         }
         return;
      }

      public function pylubuvo(param1:Animation) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wonira=param1;
         addChild(param1);
         param1.start();
         param1.x=399.5-param1.width*0.5+5;
         param1.y=245.85-param1.height*0.5;
         return;
      }

      public function disable() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.mimo)
         {
            this.barusewuq();
         }
         else
         {
            this.qanelo=true;
         }
         return;
      }

      private function barusewuq() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:GTween = new GTween(this,hokyqaf,{alpha:0.0});
         _loc1_.onComplete=this.gozohu;
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      private function gozohu(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wonira.dispose();
         return;
      }
   }
[/CLASS]
}