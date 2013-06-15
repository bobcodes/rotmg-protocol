package pufupav
{
   import ruzynyj.Belybaz;
   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;


   public class ParticleField extends Belybaz
   {
      public function ParticleField(param1:BitmapData, param2:Number, param3:Number, param4:Number) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.hami=new Sprite();
         this.qoti=[];
         this.siqunyp(param4,param3);
         this.cumenineq();
         this.vulin();
         var param1:BitmapData = new BitmapData(this.width,this.height,true,0);
         param1.draw(this.hami);
         super(param1,0);
         return;
      }

      private const SMALL:String = "SMALL";

      private const LARGE:String = "LARGE";

      private var tij:String;

      private var width:int;

      private var height:int;

      public var lifetime_:int;

      public var timeLeft_:int;

      private var hami:Sprite;

      private var qoti:Array;

      private var visibleHeight:Number;

      private var offset:Number;

      private var timer:Timer;

      private var zikytu:Boolean;

      private function vulin() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timer=new Timer(this.lefyl());
         this.timer.addEventListener(TimerEvent.TIMER,this.pivaw);
         this.timer.start();
         return;
      }

      private function siqunyp(param1:Number, param2:Number) : void {
         var [OFS2]_loc3_:* = [/OFS]true;
         var [OFS3]_loc4_:* = [/OFS]false;
         this.[OFS15]visibleHeight[/OFS][OFS15]=[/OFS][OFS8]param1[/OFS][OFS11]*[/OFS][OFS9]5[/OFS][OFS14]+[/OFS][OFS12]40[/OFS];
         this.[OFS26]offset[/OFS][OFS26]=[/OFS]this.[OFS20]visibleHeight[/OFS][OFS25]*[/OFS][OFS23]0.5[/OFS];
         this.[OFS37]width[/OFS][OFS37]=[/OFS][OFS30]param2[/OFS][OFS33]*[/OFS][OFS31]5[/OFS][OFS36]+[/OFS][OFS34]40[/OFS];
         this.[OFS50]height[/OFS][OFS50]=[/OFS]this.[OFS42]visibleHeight[/OFS][OFS49]+[/OFS]this.[OFS46]offset[/OFS];
         [OFS53]return[/OFS];
      }

      private function cumenineq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tij=this.width==8?this.SMALL:this.LARGE;
         return;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:uint = 0;
         if(this.zikytu)
         {
            return false;
         }
         var _loc4_:uint = this.qoti.length;
         _loc3_=0;
         while(_loc3_<_loc4_)
         {
            if(this.qoti[_loc3_])
            {
               this.qoti[_loc3_].move();
            }
            _loc3_++;
         }
         toro=new BitmapData(this.width,this.height,true,0);
         toro.draw(this.hami);
         return true;
      }

      private function pivaw(param1:TimerEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Square = new Square(this.fevy(),this.lojofaduh(),this.zocame());
         _loc2_.complete.add(this.dahije);
         this.qoti.push(_loc2_);
         this.hami.addChild(_loc2_);
         return;
      }

      private function zocame() : uint {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.tij==this.SMALL?15:30;
      }

      private function lefyl() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.tij==this.SMALL?100:50;
      }

      private function dahije(param1:Square) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.complete.removeAll();
         this.hami.removeChild(param1);
         this.qoti.splice(this.qoti.indexOf(param1),1);
         return;
      }

      private function fevy() : Point {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Array = Math.random()<0.5?["x","y","width","visibleHeight"]:["y","x","visibleHeight","width"];
         var _loc2_:Point = new Point(0,0);
         _loc2_[_loc1_[0]]=Math.random()*this[_loc1_[2]];
         _loc2_[_loc1_[1]]=Math.random()<0.5?0:this[_loc1_[3]];
         return _loc2_;
      }

      private function lojofaduh() : Point {
         return new Point(this.width/2,this.visibleHeight/2);
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timer.removeEventListener(TimerEvent.TIMER,this.pivaw);
         this.timer.stop();
         this.timer=null;
         this.hami=null;
         this.qoti=[];
         this.zikytu=true;
         return;
      }
   }

}   import flash.display.Shape;
   import flash.geom.Point;
   import mukyrosu.Qanyduk;


   class Square extends Shape
   {
      function Square(param1:Point, param2:Point, param3:uint) {
         this.complete=new Qanyduk();
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

      public var complete:Qanyduk;

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
