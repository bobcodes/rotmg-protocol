package moryzis
{
   import fubuwa.Tyd;
   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;


   public class ParticleField extends Tyd
   {
      public function ParticleField(param1:BitmapData, param2:Number, param3:Number, param4:Number) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.misan=new Sprite();
         this.vomewasi=[];
         this.zitiruson(param4,param3);
         this.gimafyhis();
         this.quwimezu();
         var param1:BitmapData = new BitmapData(this.width,this.height,true,0);
         param1.draw(this.misan);
         super(param1,0);
         return;
      }

      private const SMALL:String = "SMALL";

      private const LARGE:String = "LARGE";

      private var myhise:String;

      private var width:int;

      private var height:int;

      public var lifetime_:int;

      public var timeLeft_:int;

      private var misan:Sprite;

      private var vomewasi:Array;

      private var visibleHeight:Number;

      private var offset:Number;

      private var timer:Timer;

      private var gah:Boolean;

      private function quwimezu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer=new Timer(this.gano());
         this.timer.addEventListener(TimerEvent.TIMER,this.porykocaq);
         this.timer.start();
         return;
      }

      private function zitiruson(param1:Number, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.visibleHeight=param1*5+40;
         this.offset=this.visibleHeight*0.5;
         this.width=param2*5+40;
         this.height=this.visibleHeight+this.offset;
         return;
      }

      private function gimafyhis() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.myhise=this.width==8?this.SMALL:this.LARGE;
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:uint = 0;
         if(this.gah)
         {
            return false;
         }
         var _loc4_:uint = this.vomewasi.length;
         _loc3_=0;
         while(_loc3_<_loc4_)
         {
            if(this.vomewasi[_loc3_])
            {
               this.vomewasi[_loc3_].move();
            }
            _loc3_++;
         }
         vyho=new BitmapData(this.width,this.height,true,0);
         vyho.draw(this.misan);
         return true;
      }

      private function porykocaq(param1:TimerEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Square = new Square(this.qazu(),this.lywyzyt(),this.ricubybyf());
         _loc2_.complete.add(this.tyv);
         this.vomewasi.push(_loc2_);
         this.misan.addChild(_loc2_);
         return;
      }

      private function ricubybyf() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.myhise==this.SMALL?15:30;
      }

      private function gano() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.myhise==this.SMALL?100:50;
      }

      private function tyv(param1:Square) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.complete.removeAll();
         this.misan.removeChild(param1);
         this.vomewasi.splice(this.vomewasi.indexOf(param1),1);
         return;
      }

      private function qazu() : Point {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Array = Math.random()<0.5?["x","y","width","visibleHeight"]:["y","x","visibleHeight","width"];
         var _loc2_:Point = new Point(0,0);
         _loc2_[_loc1_[0]]=Math.random()*this[_loc1_[2]];
         _loc2_[_loc1_[1]]=Math.random()<0.5?0:this[_loc1_[3]];
         return _loc2_;
      }

      private function lywyzyt() : Point {
         return new Point(this.width/2,this.visibleHeight/2);
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer.removeEventListener(TimerEvent.TIMER,this.porykocaq);
         this.timer.stop();
         this.timer=null;
         this.misan=null;
         this.vomewasi=[];
         this.gah=true;
         return;
      }
   }

}   import flash.display.Shape;
   import flash.geom.Point;
   import tulunyno.Hugyqufyq;


   class Square extends Shape
   {
      function Square(param1:Point, param2:Point, param3:uint) {
         this.complete=new Hugyqufyq();
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

      public var complete:Hugyqufyq;

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
