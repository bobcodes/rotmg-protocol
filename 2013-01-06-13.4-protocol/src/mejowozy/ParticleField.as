package mejowozy
{
[CLASS1742]   import wade.Cevic;
   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;


   public class ParticleField extends Cevic
   {
      public function ParticleField(param1:BitmapData, param2:Number, param3:Number, param4:Number) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.takeg=new Sprite();
         this.gyj=[];
         this.ketewivif(param4,param3);
         this.wotod();
         this.zycupapyh();
         var param1:BitmapData = new BitmapData(this.width,this.height,true,0);
         param1.draw(this.takeg);
         super(param1,0);
         return;
      }

      private const SMALL:String = "SMALL";

      private const LARGE:String = "LARGE";

      private var jeqygi:String;

      private var width:int;

      private var height:int;

      public var lifetime_:int;

      public var timeLeft_:int;

      private var takeg:Sprite;

      private var gyj:Array;

      private var visibleHeight:Number;

      private var offset:Number;

      private var timer:Timer;

      private var gajejinat:Boolean;

      private function zycupapyh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timer=new Timer(this.guvydifuz());
         this.timer.addEventListener(TimerEvent.TIMER,this.weqyliga);
         this.timer.start();
         return;
      }

      private function ketewivif(param1:Number, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.visibleHeight=param1*5+40;
         this.offset=this.visibleHeight*0.5;
         this.width=param2*5+40;
         this.height=this.visibleHeight+this.offset;
         return;
      }

      private function wotod() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jeqygi=this.width==8?this.SMALL:this.LARGE;
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:uint = 0;
         if(this.gajejinat)
         {
            return false;
         }
         var _loc4_:uint = this.gyj.length;
         _loc3_=0;
         while(_loc3_<_loc4_)
         {
            if(this.gyj[_loc3_])
            {
               this.gyj[_loc3_].move();
            }
            _loc3_++;
         }
         mujuwizig=new BitmapData(this.width,this.height,true,0);
         mujuwizig.draw(this.takeg);
         return true;
      }

      private function weqyliga(param1:TimerEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Square = new Square(this.guzod(),this.kika(),this.nolug());
         _loc2_.complete.add(this.towejugus);
         this.gyj.push(_loc2_);
         this.takeg.addChild(_loc2_);
         return;
      }

      private function nolug() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.jeqygi==this.SMALL?15:30;
      }

      private function guvydifuz() : uint {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.jeqygi==this.SMALL?100:50;
      }

      private function towejugus(param1:Square) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.complete.removeAll();
         this.takeg.removeChild(param1);
         this.gyj.splice(this.gyj.indexOf(param1),1);
         return;
      }

      private function guzod() : Point {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = Math.random()<0.5?["x","y","width","visibleHeight"]:["y","x","visibleHeight","width"];
         var _loc2_:Point = new Point(0,0);
         _loc2_[_loc1_[0]]=Math.random()*this[_loc1_[2]];
         _loc2_[_loc1_[1]]=Math.random()<0.5?0:this[_loc1_[3]];
         return _loc2_;
      }

      private function kika() : Point {
         return new Point(this.width/2,this.visibleHeight/2);
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timer.removeEventListener(TimerEvent.TIMER,this.weqyliga);
         this.timer.stop();
         this.timer=null;
         this.takeg=null;
         this.gyj=[];
         this.gajejinat=true;
         return;
      }
   }
[/CLASS]
}[CLASS1743]   import flash.display.Shape;
   import flash.geom.Point;
   import tinava.Dab;


   class Square extends Shape
   {
      function Square(param1:Point, param2:Point, param3:uint) {
         this.complete=new Dab();
         super();
         this.start=param1;
         this.end=param2;
         this.lifespan=param3;
         this.moveX=(param2.x-param1.x)/param3;
         this.moveY=(param2.y-param1.y)/param3;
         graphics.beginFill(16777215);
         graphics.drawRect(-2,-2,4,4);
         this.position();
         return;
      }

      public var start:Point;

      public var end:Point;

      private var lifespan:uint;

      private var moveX:Number;

      private var moveY:Number;

      private var angle:Number;

      public var complete:Dab;

      private function position() : void {
         this.x=this.start.x;
         this.y=this.start.y;
         return;
      }

      public function move() : void {
         this.x=this.x+this.moveX;
         this.y=this.y+this.moveY;
         this.lifespan--;
         if(!this.lifespan)
         {
            this.complete.dispatch(this);
         }
         return;
      }
   }
[/CLASS]