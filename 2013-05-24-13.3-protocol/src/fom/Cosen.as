package fom
{
   import flash.utils.Timer;
   import gyzesuqu.Tybabukyr;
   import tulunyno.Hugyqufyq;
   import flash.events.TimerEvent;


   public class Cosen extends Object
   {
      public function Cosen() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.update=new Hugyqufyq(int);
         this.available=true;
         return;
      }

      public var objectId:uint;

      private var nefum:Array;

      private var pek:uint;

      public var tebus:uint;

      public var komysolad:int;

      public var position:int;

      public var available:Boolean;

      private var toni:int;

      private var mymemore:Timer;

      private var jupyk:Tybabukyr;

      private var zeka:Timer;

      private var zajujenud:Tybabukyr;

      public var update:Hugyqufyq;

      public function set qamus(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nefum=param1;
         if(!(param1==null)&&param1.length>0)
         {
            this.toni=0;
         }
         return;
      }

      public function get qamus() : Array {
         return this.nefum;
      }

      public function set dahycu(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pek=param1;
         this.mymemore=new Timer(param1,0);
         this.jupyk=new Tybabukyr(this.mymemore,TimerEvent.TIMER,TimerEvent);
         this.jupyk.add(this.genoge);
         return;
      }

      public function set tegufej(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tebus=param1;
         this.zeka=new Timer(param1,0);
         this.zajujenud=new Tybabukyr(this.zeka,TimerEvent.TIMER,TimerEvent);
         this.zajujenud.add(this.kebonyp);
         return;
      }

      public function jewaw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.available)
         {
            this.mymemore.reset();
            this.mymemore.start();
            this.zeka.reset();
            this.zeka.start();
            this.available=false;
            this.toni=this.toni+(this.toni>this.qamus.length-1?0:1);
            this.update.dispatch(this.position);
         }
         return;
      }

      private function kebonyp(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.toni==0)
         {
            this.zeka.stop();
         }
         this.available=true;
         this.update.dispatch(this.position);
         return;
      }

      private function genoge(param1:TimerEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.toni--;
         if(this.toni==0)
         {
            this.mymemore.stop();
         }
         this.update.dispatch(this.position);
         return;
      }

      public function viv(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         if(param1<=0)
         {
            _loc2_=this.qamus[this.toni];
         }
         return _loc2_;
      }
   }

}